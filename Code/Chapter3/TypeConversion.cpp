//
// Created by 金卓群 on 2021/5/9.
//

#include "TypeConversion.h"
#include <iostream>
#include <iterator>
#include <sstream>
using namespace std;
void typeConversion(){
    // string & char[]
    cout<<endl<<"---string to char[]:---"<<endl;
    string str = "abcdef";
    cout<<"string:"<<str<<endl;
    cout<<"string size:"<<str.size()<<endl;

    //c_array 没有结束符 '/0'
    char c_array[str.size()];
    for(int i = 0; i < str.size(); i++){
        c_array[i] = str[i];
    }
    cout<<"c_array[直接for循环赋值]:"<<c_array<<endl;
    cout<<"c_array.size:"<<sizeof(c_array)/sizeof(char)<<endl;

    //c_array_2 有结束符 '/0'
    char c_array_2[str.size()+10];
    strcpy(c_array_2, str.c_str());
    cout<<"c_array_2[use c_str() + strlen]:"<<c_array_2<<endl;
    //strlen 返回char[] 的长度，空字符不计算在内，遇到空字符就返回长度
    cout<<"c_array_2.size:"<<strlen(c_array_2)<<endl;

    cout<<endl<<"---char[] to string:---"<<endl;
    char arr[] = "This is a char array[]";
    cout<<"char array:"<<arr<<endl;
    string char_to_string = arr;
    cout<<"char_to_string[直接赋值]:"<<char_to_string<<endl;

    cout<<endl<<"---string to int:---"<<endl;
    //输入输出流做 string 转 int
    const string string_to_int = "100";
    int num;
    stringstream ss;
    ss << string_to_int;
    ss >> num;
    cout<<"string_to_int[use stingstream]:"<<num<<endl;
    cout<<"string_to_int[use stoi]:"<< stoi(string_to_int)<<endl;

    const char* string_to_int_1 = "200";
    cout<<"char*_to_int[use atoi]:"<<atoi(string_to_int_1)<<endl;

    cout<<endl<<"---int to string:---"<<endl;
    string int_to_string;
    stringstream ss2;
    ss2 << num;
    ss2 >> int_to_string;
    cout<<"int_to_stiring[use stingstream]:"<<int_to_string<<endl;
    cout<<"int_to_stiring[use to_string]:"<<to_string(num)<<endl;


}