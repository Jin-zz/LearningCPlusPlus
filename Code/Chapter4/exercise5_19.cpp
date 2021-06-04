//
// Created by 金啄虫 on 2021/6/4.
//

#include "exercise5_19.h"
#include <iostream>

using namespace std;
int main(){

    string str;
    string lastStr;
    cout<< "题目：编写一段程序，使用do while 循环重复地执行下述任务：首先提示用户输入两个string对象，然后挑出较短的那个并输出它。"<< endl;
    cout<< "输入两个string对象：（command+D 结束输入）" <<endl;

    do{
        string s1, s2;
        cin >> s1 >> s2;
        cout << "较短的str是" <<( s1.size() < s2.size() ? s1 : s2 ) << endl;
    } while (cin);



    return 0;
}
