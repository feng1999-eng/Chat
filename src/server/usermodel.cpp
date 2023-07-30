#include "usermodel.h"
#include <string>
#include <iostream>
#include "db.h"
#include <muduo/base/Logging.h>
using namespace muduo;
using namespace std;

bool UserModel::insert(User &user)
{
    char sql[1024] = {0};
    sprintf(sql, "insert into user(name,password,state) values('%s','%s','%s')",
            user.getName().c_str(), user.getPassword().c_str(), user.getState().c_str());
    MySQL mysql;
    if (mysql.connect())
    {
        if (mysql.update(sql))
        {
            //获取插入成功的用户数据生成的主键id
            LOG_INFO << "注册成功！";
            user.setId(mysql_insert_id(mysql.getConnection()));
            return true;
        }
    }
    else
    {
        LOG_INFO << "注册失败！";
    }
    return false;
}

User UserModel::query(int id)
{
    char sql[1024] = {0};
    sprintf(sql, "select * from user where id = %d", id);
    MySQL mysql;
    if (mysql.connect())
    {
        MYSQL_RES *res = mysql.query(sql);
        if (res != nullptr)
        {
            auto row = mysql_fetch_row(res); //查询数据库的一行，返回值伟MYSQL_ROW
            if (row != nullptr)
            {
                User user;
                user.setId(atoi(row[0]));
                user.setName(row[1]);
                user.setPassword(row[2]);
                user.setState(row[3]);
                return user;
            }
        }
    }
    return User();
}

//用户登陆成功后更新数据库的登录状态
bool UserModel::updateState(User user)
{
    char sql[1024] = {0};
    sprintf(sql, "update user set state = '%s' where id =%d", user.getState().c_str(),user.getId());
    MySQL mysql;
    if(mysql.connect()){
        if(mysql.update(sql)){
            return true;
        }
    }
    return false;
}

void UserModel::resetState(){
    char sql[1024] = "update user set state = 'offline' where state = 'online'";
    MySQL mysql;
    if(mysql.connect()){
        mysql.update(sql);
    }
}