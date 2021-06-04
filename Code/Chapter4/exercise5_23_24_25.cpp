//
// Created by 金啄虫 on 2021/6/4.
//

#include "exercise5_23_24_25.h"

#include <iostream>
#include <stdexcept>
using namespace std;
/**
 * try catch 异常处理
 * 编写一段程序，从标准输入读取两个整数，输出第一个数除以第二个数的结果。使得当第二个数是0时抛出异常。
 * @return
 */
int main(){
    cout << "题目：编写一段程序，从标准输入读取两个整数，输出第一个数除以第二个数的结果。使得当第二个数是0时抛出异常。" <<endl;
    cout << "读取两个整数：" <<endl;
    string str;
    int n1, n2;
    while (cin >> n1 >> n2){
        try {
            if (n2 == 0) throw runtime_error("n2 is 0 !!");
            else cout << "n1 / n2 : " << n1 / n2 << endl;
        }
        catch(runtime_error err){
            cout << err.what() << "\n Try Again ? y or n" << endl;
            char c;
            cin >> c;
            if(c == 'n') return  0;
            else{
                cout << "please input tow numbers: " << endl;
            }
        }
    }
    return 0;
}
