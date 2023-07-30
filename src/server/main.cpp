#include "ChatServer.h" 
#include "ChatService.h" 
#include <iostream>
#include <signal.h>
void resetHandler(int){
    ChatService::instance()->reset();
    exit(0);
}
int main()
{
    signal(SIGINT,resetHandler);
    EventLoop loop;
    InetAddress addr("172.22.209.202",3389);
    ChatServer server(&loop,addr,"Chat");
    server.start();
    loop.loop();
    return 0;
}