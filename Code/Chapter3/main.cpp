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
    arrayTest();
    return 0;
}
