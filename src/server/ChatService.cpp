#include "ChatService.h"
#include "public.h"
#include <muduo/base/Logging.h>
//获取单例对象的接口函数
ChatService *ChatService::instance()
{
    static ChatService service;
    return &service;
}

//消息注册以及对应的Handler回调操作
ChatService::ChatService()
{
    _msgHandlerMap.insert({LOGIN_MSG, std::bind(&ChatService::Log, this, _1, _2, _3)});
    _msgHandlerMap.insert({REG_MSG, std::bind(&ChatService::Reg, this, _1, _2, _3)});
    _msgHandlerMap.insert({OUT_MSG, std::bind(&ChatService::Out, this, _1, _2, _3)});
    _msgHandlerMap.insert({ONE_CHAT_MSG, std::bind(&ChatService::OneChat, this, _1, _2, _3)});
    _msgHandlerMap.insert({ADD_FRIEND_MSG, std::bind(&ChatService::AddFriend, this, _1, _2, _3)});
}

MsgHandler ChatService::getHandler(int msgid)
{
    auto it = _msgHandlerMap.find(msgid);
    if (it == _msgHandlerMap.end())
    {
        return [=](const TcpConnectionPtr &conn, json &js, Timestamp time)
        {
            LOG_ERROR << "msg id:" << msgid << " can not find handler";
        };
    }
    else
        return _msgHandlerMap[msgid];
}
void ChatService::Log(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    LOG_INFO << "login";
    int id = js["id"].get<int>();
    string pwd = js["password"];
    User user = _userModel.query(id);
    if (user.getId() == id && user.getPassword() == pwd)
    {
        if (user.getState() == "online")
        {
            LOG_INFO << "登陆失败，该用户已经在线！";
            json response;
            response["msgid"] = LOGIN_MSG_ACK;
            response["errno"] = 2;
            response["errmsg"] = "该用户已登录";
            conn->send(response.dump());
        }
        else
        {
            LOG_INFO << "登陆成功！";
            {
                lock_guard<mutex> lock(_connMutex);
                _userConnMap.insert({id, conn});
            }
            user.setState("online");
            _userModel.updateState(user);
            json response;
            response["msgid"] = LOGIN_MSG_ACK;
            response["errno"] = 0;
            response["id"] = user.getId();
            response["name"] = user.getName();
            vector<string> friend_vec = _friendModel.query(id);
            vector<string> vec = _offlineMsgModel.query(id);
            if (!friend_vec.empty())
            {
                response["friendlist"] = friend_vec;
            }
            if (!vec.empty())
            {
                response["offlinemsg"] = vec;
                _offlineMsgModel.remove(id);
            }
            conn->send(response.dump());
        }
    }
    else
    {
        LOG_INFO << "登陆失败！";
        json response;
        response["msgid"] = LOGIN_MSG_ACK;
        response["errno"] = 1;
        response["errmsg"] = "账号密码错误";
        conn->send(response.dump());
    }
}
void ChatService::Reg(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    LOG_INFO << "REG";
    string name = js["name"];
    string pwd = js["password"];

    User user;
    user.setName(name);
    user.setPassword(pwd);
    bool state = _userModel.insert(user);
    if (state)
    {
        json response;
        response["msgid"] = REG_MSG_ACK;
        response["errno"] = 0;
        response["id"] = user.getId();
        conn->send(response.dump());
    }
    else
    {
        json response;
        response["msgid"] = REG_MSG_ACK;
        response["errno"] = 1;
        conn->send(response.dump());
    }
}

void ChatService::Out(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    LOG_INFO << "退出登录成功!";
    int id = js["id"].get<int>();
    string pwd = js["password"];
    User user = _userModel.query(id);
    if (user.getId() == id && user.getPassword() == pwd)
    {
        if (user.getState() == "online")
        {
            { //删除登录链接表里面的链接
                lock_guard<mutex> lock(_connMutex);
                _userConnMap.erase(id);
            }
            user.setState("offline");
            _userModel.updateState(user);
            json response;
            response["msg"] = "退出登录成功";
            response["errno"] = 0;
            response["msgid"] = OUT_MSG_ACK;
            conn->send(response.dump());
        }
    }
    else
    {
        LOG_INFO << "该用户未登录";
        json response;
        response["msg"] = "退出登录失败";
        response["errno"] = 1;
        response["msgid"] = OUT_MSG_ACK;
        conn->send(response.dump());
    }
}

void ChatService::clientCloseException(const TcpConnectionPtr &conn)
{
    User user;
    {
        lock_guard<mutex> lock(_connMutex);
        for (auto it = _userConnMap.begin(); it != _userConnMap.end(); it++)
        {
            if (it->second == conn)
            {
                user.setId(it->first);
                //删除map表的用户链接信息
                _userConnMap.erase(it);
                break;
            }
        }
    }

    if (user.getId() != -1)
    {
        //更新数据库状态
        user.setState("offline");
        _userModel.updateState(user);
    }
}

//服务器异常退出
void ChatService::reset()
{
    _userModel.resetState();
}

//点对点聊天
void ChatService::OneChat(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int toid = js["to"].get<int>();
    {
        lock_guard<mutex> lock(_connMutex);
        auto it = _userConnMap.begin();
        if (it != _userConnMap.end())
        { //在线表中存在该id，可以转发在线消息
            it->second->send(js.dump());
            return;
        }
    }
    //不存在需要存储离线消息
    _offlineMsgModel.insert(toid, js.dump());
}

//添加好友
void ChatService::AddFriend(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int userid = js["id"].get<int>();
    int friendid = js["friendid"].get<int>();
    _friendModel.insert(userid, friendid);
}