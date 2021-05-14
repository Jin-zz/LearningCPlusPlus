//
// Created by 金卓群 on 2021/4/26.
// 介绍 string 构造方式
//

#include "StringConstructor.h"
#include <string>
#include <iostream>
using namespace std;

void stringConstructorTest(){
    //默认初始化 为空串
    string s;
    //拷贝初始化 -> 先初始化一个字符串 再赋值给目标对象
    string s1 = "xxx";
    //拷贝初始化 深拷贝 存入新内存
    string s2(s1);
    //字面量赋值 直接初始化
    string s3("value");
    //填充字符串
    string s4(10, 'c');
    cout<<"s1:"<<s1<<endl;
    cout<<"s2:"<<s2<<endl;
    cout<<"s3:"<<s3<<endl;
    cout<<"s4:"<<s4<<endl;
    cout<<"s4[9]:"<<s4[9]<<endl;
    cout<< (s1==s2? "s1==s2":"s1!=s2") <<endl;  //string 比较大小 比较第一个不同的字符大小

    cout<< "输入一个字符串(读取到空白符为止)：" <<endl;
    string  s5;
    cin >> s5;
    cout << "s5:" <<s5 <<endl; //会忽略空格 从第一个不是空格的字符算起 遇到空格则结束输入流 => 不会保存输入时的空格
    cout << "s5.size():"<< s5.size() << endl;

    cout<< "按行读取字符串：" <<endl;
    string line;
    while(getline(cin, line)){
        cout << line << endl;  //macos 下结束符 command+D
        //for(auto c : line) : 改变 c 不会改变 string
        for(auto &c : line){
            //c 是引用类型
            if(isspace(c)){
                c = '0';
                cout<<c<<endl;
                cout<<"读到空白字符"<<endl;
            }
        }
        cout << "&c 取引用 改变c 可以改变原有字符串：" << line << endl;  //macos 下结束符 command+D
    }
}