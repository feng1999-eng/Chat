#ifndef PUBLIC_H
#define PUBLIC_H

enum EnMsgType{
    LOGIN_MSG=1,//登录
    LOGIN_MSG_ACK,
    REG_MSG,//注册
    REG_MSG_ACK,
    OUT_MSG,//退出
    OUT_MSG_ACK,
    ONE_CHAT_MSG,//聊天
    ADD_FRIEND_MSG//加好友
};
#endif