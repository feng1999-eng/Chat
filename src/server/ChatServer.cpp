#include "ChatServer.h"
#include <functional>
#include <string>
#include "json.hpp"
#include "ChatService.h"
using json=nlohmann::json;
using namespace std;
using namespace placeholders;
ChatServer::ChatServer(EventLoop *loop,
                       const InetAddress &listenAddr,
                       const string &nameArg) : _server(loop, listenAddr, nameArg), _loop(loop)
{
    _server.setConnectionCallback(bind(&ChatServer::onConnetion, this, _1));
    _server.setMessageCallback(bind(&ChatServer::onMessage, this, _1, _2, _3));
    _server.setThreadNum(4);
}

void ChatServer::start()
{
    _server.start();
}

//上报链接相关信息的回调函数
void ChatServer::onConnetion(const TcpConnectionPtr &conn)
{
    //客户端断开连接 
    if(!conn->connected()){
        ChatService::instance()->clientCloseException(conn);
        conn->shutdown();
    }
}

//上报读写事件相关信息的回调函数
void ChatServer::onMessage(const TcpConnectionPtr &conn,
                           Buffer *buffer,
                           Timestamp time)
{
    string buf=buffer->retrieveAllAsString();
    json js=json::parse(buf);
    //解耦网络模块和业务模块的代码
    auto Handler=ChatService::instance()->getHandler(js["msgid"].get<int>());
    Handler(conn,js,time);
}