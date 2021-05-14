# C++基础知识

## String

### 基本知识

- string 定义在命名空间 std 中，声明：`std::string str; `或使用 `using namespace std;`

  

### 初始化

```
string s1; //默认初始化 s1为空字符串

string s2(s1);  //深拷贝 赋值 
string s2 = s1;  //等价于 s2(s1) 

string s3("value");  //字面量赋值
string s3 = "value";  //同上 等价

string s4(n, 'c');  //n个连续的字符c组成的字符串 直接初始化


```

> 含 “=” 的都是<u>拷贝初始化</u>，即在初始化之前会先初始化另一个变量，再执行赋值操作；

### 读写操作

```
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

```
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

