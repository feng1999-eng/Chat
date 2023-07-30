#ifndef CHATSERVICE_H
#define CHATSERVICE_H
#include "json.hpp"
using json=nlohmann::json;
#include <functional>
#include <muduo/net/TcpConnection.h>
using namespace muduo::net;
using namespace muduo;
using namespace std;
using namespace placeholders;
#include <unordered_map>
#include <mutex>
#include "usermodel.h"
#include "offlinemessagemodel.h"
#include "friendmodel.h"
//事件处理函数对象
using MsgHandler = function<void(const TcpConnectionPtr& conn,json &js,Timestamp)>;
class ChatService{
    public:
        static ChatService* instance();
        void Log(const TcpConnectionPtr& conn,json &js,Timestamp time);
        void Reg(const TcpConnectionPtr& conn,json &js,Timestamp time);
        void Out(const TcpConnectionPtr& conn,json &js,Timestamp time);
        void clientCloseException(const TcpConnectionPtr& conn);
        void reset();
        void OneChat(const TcpConnectionPtr& conn,json &js,Timestamp time);
        void AddFriend(const TcpConnectionPtr& conn,json &js,Timestamp time);
        MsgHandler getHandler(int msgid);
    private:
        ChatService();//单例模式，构造函数私有化
        unordered_map<int,MsgHandler> _msgHandlerMap;//存储消息id及其对应的处理方法

        unordered_map<int,TcpConnectionPtr> _userConnMap;//存储在线用户的通信链接

        mutex _connMutex;//定义互斥锁，保证_userConnMap的线程安全
 

        //引入一个UserModel类的对象
        UserModel _userModel;
        OfflineMsgModel _offlineMsgModel;
        FriendModel _friendModel;
};
#endif