//
// Created by 金啄虫 on 2021/6/4.
//

#include "exericse6_4.h"
#include <iostream>

using namespace std;


int fact(int i){
    return i > 1 ? i * fact(i-1) : 1;
}

void getFact(){
    cout << "输入一个数字："<<endl;
    int num = 0;
    cin >> num;
    cout << "阶乘结果：" << fact(num) << endl;
}


/**
 * 编写一个与用户交互的函数，要求用户输入一个数字，计算生成该数字的阶乘。在main函数中调用该函数
 * @return
 */
int main(){
    getFact();
    return 0;
}