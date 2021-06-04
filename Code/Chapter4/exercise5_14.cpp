//
// Created by 金啄虫 on 2021/6/4.
//

#include "exercise5_14.h"
#include <iostream>
#include <vector>

using namespace std;

/**
 * 编写一段程序，从标准输入中读取若干string对象并查找连续重复出现的单词.
 * 输出连续重复出现最多单词的次数
 * @return
 */
int main(){
    string str;
    string lastStr;
    string result;
    int count = 0;
    int sum =  0;
    cout<< "题目：编写一段程序，从标准输入中读取若干string对象并查找连续重复出现的单词.\n"
           "输出连续重复出现最多单词的次数 " <<endl;
    cout<< "输入字符串序列：（command+D 结束输入）" <<endl;
    while (cin >> str){
        if(!lastStr.empty() && str == lastStr){
            count++;
            if(count > sum) {
                result = str;
                sum = count;
            }
        }else{
            count = 0;
            lastStr = str;
        }
    }

    cout<< "连续重复出现的最大次数："<< sum + 1 <<", 单词为："<< result << endl;
    return 0;
}
