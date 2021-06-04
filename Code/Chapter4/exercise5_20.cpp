//
// Created by 金啄虫 on 2021/6/4.
//

#include "exercise5_20.h"
#include <iostream>
using namespace std;

/**
 * 编写一段程序，从标准输入中读取string对象的序列直到连续出现两个相同的单词或者所有的单词都读完为止。
 * 使用while循环一次读取一个单词，当一个单词连续出现两次时使用break语句终止循环。
 * 输出连续重复出现的单词，或者输出一个消息说明没有任何单词是连续重复出现的。
 * @return
 */
int main(){

    string str;
    string lastStr;
    cout<< "题目：输出连续重复出现的单词，若没有单词重复出现 输出消息说明" << endl;
    cout<< "输入字符串序列：（command+D 结束输入）" <<endl;
    while(cin>>str){
        if( !lastStr.empty() && str == lastStr){
            cout << "读取到两个一样的字符串：" << str << endl;
            //break;
            return 0;
        }else{
            lastStr = str;
        }
    }
    cout<< "无连续重复出现的字符串" << endl;


    return 0;
}
