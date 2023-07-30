#ifndef FRIENDMODEL_H
#define FRIENDMODEL_H

#include <vector>
#include <string>
using namespace std;
class FriendModel{
    public:
        void insert(int userid,int friendid);
        vector<string> query(int userid);
};

#endif