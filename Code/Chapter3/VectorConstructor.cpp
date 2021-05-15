//
// Created by 金卓群 on 2021/4/26.
//

#include "VectorConstructor.h"
#include <vector>
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

//输出元素
void output(vector<int>& v){
    cout<<"输出vector:"<<endl;
    //for(auto value : v){  // 改变 value 不会改变 v
    for(auto &value : v){
        cout << value << endl;
    }
}

void  VectorConstructor(){
    //初始化
    vector<int> v1;
    vector<int> v2(v1);  //深拷贝
    vector<int> v3 = v1;  //深拷贝
    vector<int> v4(10, 1);  //创建指定数量的元素
    vector<int> v5(10);
    vector<int> v6{ 1,2,3,4 };  //列表初始化
    vector<int> v7 = { 1,2,3,4 };

    //添加元素 push_back
    cout<< "---添加元素 push_back（输入一组数字）---"<<endl;
    vector<int> v;
    string str;
    getline(cin, str);
    int num;
    stringstream ss(str);
    while(ss>>num){
        v.push_back(num);
        output(v);
    }

    //删除元素 pop_back
    cout<< "---删除元素 pop_back---"<<endl;
    v.pop_back();
    output(v);

    //获取元素
    //可以通过下标值获得元素 前提是该下标存在元素
    cout<< "---通过下标获取元素---"<<endl;
    auto a = (v.size() > 2) ? v[2] : 0;
    cout<< "v[2]:"<< a <<endl;
}

