//
// Created by 金啄虫 on 2021/5/15.
//
#include "iteratorUsing.h"
#include <string>
#include <iostream>
#include <map>
#include <vector>
#include "arrayTest.h"

using namespace std;
void arrayTest(){
    string values[] = {"a", "b", "c"};

    cout<<"for循环遍历数组值："<<endl;
    for(auto &val : values){
        cout<< val <<endl;
    }

    cout<<"使用指针遍历遍历数组值："<<endl;
//    string *e = &values[3];
    string *e = end(values);
    for(string *p = values; p != e; p++){
        cout<< *p <<endl;
    }

    cout<<"begin() end() 取数组首尾："<<endl;
    string *beg = begin(values);
    string *las = end(values) - 1;
    cout<< "begin(values):" <<*beg <<endl;
    cout<< "end(values) - 1:" <<*las <<endl;


}
