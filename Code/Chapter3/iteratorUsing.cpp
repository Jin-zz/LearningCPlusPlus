//
// Created by 金啄虫 on 2021/5/15.
//

#include "iteratorUsing.h"
#include <string>
#include <iostream>
#include <map>
#include <vector>
using namespace std;

void iteratorUsing(){
    //使用迭代器
    string s;
    cout<<"输入一个字符串：";
    cin >> s;
    auto start = s.begin();
    auto last = s.end();
    cout<<"s.begin():"<< *start <<endl;
    cout<<"s.end():"<< *last <<"[s.end()指向不存在的尾后迭代器]"<<endl;
    cout<<"s.size():"<< last - start <<endl;
    cout<< "s.begin()所指值:"<< *start << endl;
    cout<< "s.begin() + 1 :"<< *(start + 1) << endl;

    cout<<"迭代器遍历 string："<<endl;
    for(auto i = s.begin(); i < s.end(); i++) {
        cout << *i << endl;
        *i = 'x';
    }
    cout<<"迭代器改变原容器的值："<<endl;
    cout<<s<<endl;

    cout<<"迭代器遍历 map："<<endl;
    map<string, int> mp = { {"a",1 }, { "b", 2 }, {"c",3 }};
    for(auto i = mp.begin(); i != mp.end(); i++) {
        cout << "(i->first):" << (i->first) << ", (*i).first:" << (*i).first << endl;
        cout << "(i->second):" << (i->second) << ", (*i).second:" << (*i).second << endl;
    }


}
