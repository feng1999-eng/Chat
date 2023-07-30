#include "db.h"
#include "ChatServer.h"
#include "friendmodel.h"
#include "json.hpp"
#include <iostream>
#include <string>
using namespace std;
using json=nlohmann::json;
void FriendModel::insert(int userid,int friendid)
{
    char sql[1024] = {0};
    sprintf(sql, "insert into Friend values(%d,%d)", userid, friendid);
    MySQL mysql;
    if (mysql.connect())
    {
        mysql.update(sql);
    }
}
vector<string> FriendModel::query(int userid)
{
    char sql[1024] = {0};
    sprintf(sql, "select a.id,a.name,a.state from user a inner join Friend b on b.friendid=a.id where b.userid=%d", userid);
    MySQL mysql;
    vector<string> vec;
    if (mysql.connect())
    {
        MYSQL_RES *res = mysql.query(sql);
        if (res != nullptr)
        {
            MYSQL_ROW row;
            while ((row = mysql_fetch_row(res)) != nullptr)
            {
                json response;
                response["id"]=atoi(row[0]);
                response["name"]=row[1];
                response["state"]=row[3];
                vec.push_back(response.dump());
            }
            return vec;
        }
    }
    return vec;
}