#ifndef USERMODEL_H
#define USERMODEL_H
#include "user.h"

class UserModel
{

public:
    //注册用户插入数据库
    bool insert(User &user);
    //根据用户id查询
    User query(int id);
    //用户登陆成功后更新数据库的登录状态
    bool updateState(User user);
    //服务器异常断开，重置全部在线用户的状态
    void resetState();
};

#endif