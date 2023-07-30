#include <iostream>
#include <queue>
#include <algorithm>
#include <functional>
using namespace std;
template<typename Container>
void showContiner(Container& con){
    while(!con.empty()){
        cout<<con.top()->_x<<" "<<con.top()->_y<<endl;
        con.pop();
    }   
}
struct Node{
    Node(int x,int y):_x(x),_y(y){}
    int _x;
    int _y;
};
int main()
{
    auto comp=[](const Node* a,const Node* b)->int {if(a->_x+a->_y==b->_x+b->_y) return a->_x>b->_x; return a->_x+a->_y<b->_x+b->_y;};
    priority_queue<Node*,vector<Node*>,decltype(comp)> q(comp);
    q.push(new Node(4,5));
    q.push(new Node(3,5));
    q.push(new Node(4,3));
    q.push(new Node(2,7));
    showContiner(q);
}