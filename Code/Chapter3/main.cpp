#include <iostream>
#include "StringConstructor.h"
#include "TypeConversion.h"
#include "VectorConstructor.h"
#include "iteratorUsing.h"
#include "arrayTest.h"

using namespace std;
int main() {
    cout << "Hello, World!" << endl;
    cout << "----[StringConstructorTest]----" << endl;
//    stringConstructorTest();

    cout << "----[类型互转 Test]----" << endl;
//    typeConversion();

    cout << "----[VectorConstructor Test]----" << endl;
//    VectorConstructor();

    cout << "----[iterator Test]----" << endl;
//    iteratorUsing();

    cout << "----[array Test]----" << endl;
//    arrayTest();

    int x[10];
    int *p = x;

    cout<< sizeof(x)<<endl;
    cout<< sizeof(*x)<<endl;
    cout << sizeof(x)/sizeof(*x) << endl;

    cout<< sizeof(p)<<endl;
    cout<< sizeof(*p)<<endl;
    cout << sizeof(p)/sizeof(*p) << endl;

    double *q = new double(100);
    cout<< sizeof q;

    return 0;
}
