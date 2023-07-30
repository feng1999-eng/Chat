#ifndef OFFLINEMESSAGE_H
#define OFFLINEMESSAGE_H
#include <string>
#include <vector>
using namespace std;
class OfflineMsgModel{
    public:
        void insert(int userid,string message);
        void remove(int userid);
        vector<string> query(int userid);
};

#endif