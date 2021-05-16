# C++基础知识

## String

### 基本知识

- string 定义在命名空间 std 中，声明：`std::string str; `或使用 `using namespace std;`

  

### 初始化

```c++
string s1; //默认初始化 s1为空字符串

string s2(s1);  //深拷贝 赋值 
string s2 = s1;  //等价于 s2(s1) 

string s3("value");  //字面量赋值
string s3 = "value";  //同上 等价

string s4(n, 'c');  //n个连续的字符c组成的字符串 直接初始化


```

> 含 “=” 的都是<u>拷贝初始化</u>，即在初始化之前会先初始化另一个变量，再执行赋值操作；

### 读写操作

```c++
s = "aa bb cc dd"
os<<s;  //s写入输出流os中
is>>s;  //从输入流is中读取字符串，以空白符分割 -> 会自动忽略开头的空白符，读到下一个空白符时结束
getline(is,s)  //从is中 按行读取 给s  -> 遇到换行符就结束读取 会读取换行符，但存入string对象时不会存入换行符
s.empty()  //空为T
s.size()  //返回字符个数 类型：string::size_type
s[n]  //下标运算符 返回 第n个字符 的引用
s1 + s2  //字符串相加
s1 == s2  //字符串完全一样 返回T
s1 != s2
<,>,<=,>=. //字符串判断大小，判断第一个不相同的值的 ASCII 码大小

```

### 字符处理

- `isspace(c)` 当c是空白符时为真（空格、横向/纵向制表符、回车符、换行符等）
- 对字符串进行for循环遍历：`for( auto c : s)` 与 `for(auto &c : s)`的区别，后者是引用类型，改变c可以改变s

```c
#include <cctype>
using namespace std;
s = "gg gg"
for(auto c : s){
	//c 不是是引用类型
	if(isspace(c)) 
		cout<<"读到空白字符"<<endl;
}

for(auto &c : s){
	//c 是引用类型
	if(isspace(c)) 
		cout<<"读到空白字符"<<endl;
}
```

### 类型互转

- string 与 char[]

  - string to char[] : `str.c_str() + strcpy(char[], string)`
  - char[] to string : 直接赋值

  ```c++
  string s = "geeksforgeeks";
  int len = s.size(); // s.length();
  char c[len+1];
  
  //string to char[]
  strcpy(c, s.c_str());  //拷贝s给c[]
  
  //char[] to sting
  char arr[] = "This is a char array[]";
  string newStr = arr;
  
  ```

- string 与 int

  - String to int: `stringstream / stoi(str)` 
  - Char* to int : `atoi(char*)`

  ```c++
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
  ```

  - Int to string:  `stringstream / to_string(num)`

  ```c++
  string int_to_string;
  stringstream ss2;
  ss2 << num;
  ss2 >> int_to_string;
  cout<<"int_to_stiring[use stingstream]:"<<int_to_string<<endl;
  cout<<"int_to_stiring[use to_string]:"<<to_string(num)<<endl;
  ```

  

## Vector

### 基础知识 

本质是一种类模板，需要指定<类型>

### 初始化

```c++
//初始化
vector<int> v1;
vector<int> v2(v1);  //深拷贝
vector<int> v3 = v1;  //深拷贝
vector<int> v4(10, 1);  //创建指定数量的元素
vector<int> v5(10);
vector<int> v6{ 1,2,3,4 };  //列表初始化
vector<int> v7 = { 1,2,3,4 };
//容器的容器
vector<vector<int>> v8;
```

### 基本操作

```
//添加元素
v.push_back(num);
//删除元素 改变size 不改变capacity
v.pop_back();
//size
v.size()
//empty
v.empty()

//遍历
//for(auto val : v){  // 改变 value 不会改变 v
for(auto &val : v){
	cout << val << endl;
}
//or
for(auto i = v.begin(); i != v.end(); i++){
	cout<< *i << endl;
}
```

## 迭代器

### 基础知识

- 所有标准库容器都支持迭代器，只有少数几种才支持下标运算符
- 严格来说，string并不属于容器，但string支持很多类似操作
- begin成员指向容器的第一个元素，end成员指向容器的最后一个元素
- 如果容器为空，begin和end指向对象相同，均是尾后迭代器
- 迭代器类型： 类型::iterator `vector<int>::iterator / string::iterator`
- <u>切记 凡事使用了迭代器的循环体，不要向 迭代器所属容器 添加元素</u>

### 基本操作

```c++
*iter  返回迭代器所指元素的引用
iter->member  相当于(*iter).member 解引用并获取名为member的成员
iter++  /  iter--
iter1 ==,!=,<,> iter2
iter2 - iter1
iter + n

//遍历
cout<<"迭代器遍历 string："<<endl;
for(auto i = s.begin(); i < s.end(); i++){
    cout<< *i <<endl;
    *i = 'x'; //迭代器改变原有值
}
cout<<"迭代器遍历 map："<<endl;
map<string, int> mp = { {"a",1 }, { "b", 2 }, {"c",3 }};
for(auto i = mp.begin(); i != mp.end(); i++){
    cout<<"(i->first):"<<(i->first)<<", (*i).first:"<<(*i).first<< endl;
    cout<<"(i->second):"<<(i->second)<<", (*i).second:"<<(*i).second<< endl;
}
```

## 数组

### 基础知识

- 数组的大小确定不变

- 不能将数组内容拷贝给其他数组作为初始值

  ```
  int a[] = {0 , 1, 2};
  int b[3] = a; //报错
  int b[3];
  b = a; //报错
  
  int a[] = {0 , 1, 2};
  int b[3] = {2 , 3, 4};
  b = a; //报错
  ```

- c++中，使用数组的时候，一般会将其转换为指针，即数组名是头指针

### 初始化

```
类型名 数组名[size];  //不赋值会默认赋初始值
类型名 数组名[] = {a, b, c,...}  //不指定size 显式初始化
const unsigned sz = 10;
int *pazz[sz];
string a2[] = {"xx","yy"};
```

### 基本操作

```c++
//遍历
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
```

> 获取数组长度：
>
> `end(values) - begin(values)` or `sizeof(values)/sizeof(*values)`



## 运算符相关

### 前置运算符&后置运算符

前置递增运算符(++i)将对象本身作为左值返回，而后置递增运算符(i++)将对象原始值的副本作为右值返回。

### 访问运算符

`ptr->mem ` 等价于 `(*ptr).mem`，需要打括号

`*` 解引用运算符 优先级高于 `.`运算符

`->` 箭头运算符作用于一个指针类型的运算对象

### 三元运算符

三元运算符用于输出语句时，要打括号，因为三元运算符优先级小于 `<<`

`cout<<( grade > 60 ? "great" : "failed");`

### 位运算符

![image-20210516174042667](https://gitee.com/sparkle_zz/markdown-pics/raw/master/20210516174049.png)

- 左移：在边界之内左移数值，右端补0，左端超出部分删除，左移相当于✖️2

- 右移：在边界之内右移数值，左端补0（符号位不变 or 为0），右端超出部分删除，右移相当于➗2

- 求反：包括符号位也会取反

- & 按位与：两个均为1 返回1

- | 按位或：一个为1 返回1

- ^ 异或：一个1 一个0 返回1

## sizeof 运算符

- 用法：`sizeof(type)` or `sizeof(expr)`，可以获得一个类型/表达式所占字节数

- `sizeof(指针)` 指针本身所占空间大小
- `sizeof(*指针)`  指针所指对象的空间大小 
- `sizeof(数组)`返回整个数组的空间大小

| 基本类型 | Sizeof 值                                                    |
| -------- | ------------------------------------------------------------ |
| Char     | 1                                                            |
| Bool     | 1                                                            |
| Int      | 4                                                            |
| Double   | 8                                                            |
| *        | 指针类型的大小是固定的（无论该指针指向哪种数据类型）在32位系统中为4字节；在64位系统中为8字节 |





## 其他问题

### 溢出

```c++
short value = 32767; //short类型最大值
value += 1;  //溢出
cout << value << endl;  // 原本符号位为0，由于溢出变成1，输出负值：-32767
```

