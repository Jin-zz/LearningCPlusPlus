[TOC]

> Tips:
>
> 构造函数初始化的特殊写法
>
> 能加const的地方 就需要加
>
> 数据尽可能放在private中，函数绝大部分要放在public中
>
> 参数尽量考虑用reference来传(`类型 名称&/名称&`) 也需要考虑是否加const
>
> 返回值尽量考虑用reference来传(`名称&`)
>
> <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107213649221.png" alt="image-20201107213649221" style="zoom:50%;" />

------

## 1. 头文件布局

- 库中自带头文件 `#include <xxx>`
- 自定义头文件 `#include "xxx"` 

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107203512995.png" alt="image-20201107203512995" style="zoom: 50%;" />

## 2. inline内联函数

<img src="https://i.imgur.com/CjYftqD.png" style="zoom:67%;" />

1. inline关键字用来定义一个类的内联函数，解决一些频繁调用的小函数大量消耗栈空间（栈内存）的问题。函数定义在构造函数body内部，自动声明为inline，即类中的成员函数缺省都是内联的，但能否内联要看编译器，在构造函数外部声明内联函数要加inline关键字

2. 限制：inline只适合函数体内代码简单的函数，不能包含复杂的结构控制语句例如while、switch，并且不能内联递归函数。

3. inline函数仅仅是一个对编译器的建议，所以最后能否真正内联，看编译器的意思，它如果认为函数不复杂，能在调用点展开，就会真正内联，并不是说声明了内联就会内联，声明内联只是一个建议而已。

## 3. 访问级别

pubilc > protected > private(所有的数据都应该放在 private，打算被外界调用的函数应该是public)

## 4. 构造函数初始化 ##
![](https://i.imgur.com/70WWLCi.png)

- 构造函数名与类名相同，可以有参数，参数也可以有默认值，没有返回类型，用于创建对象

- 构造函数中，<u>成员变量初始化中使用":"函数方式</u>性能比直接在构造函数中赋值要快，建议使用这种方式。

  ```c++
  public:
  	complex (double r = 0, double i = 0)
      	: re (r), im (i)  //将构造函数的参数赋值给私有成员变量 初始化的过程中就赋值
      { }
  //相当于
   public:
  	complex (double r = 0, double i = 0){
          re = r
          im = i
      }        
  ```

- 不带指针的类大多不用写析构函数

## 5. 构造函数的重载 ##

![](https://i.imgur.com/OZzGtLc.png)

- 可以有很多重名的构造函数，即构造函数重载
- 重载real函数时，其实编译器会编译成两个函数，虽然同名但不重载
- 黄色标注的构造函数定义将出现问题，与上面的构造函数存在冲突，在无参初始化该类对象时，因为第一个构造函数已经有参数默认初始化列表了，定义该类对象时可以不加入参数，这就产生了冲突。
- **ctor放在private中：设计模式-单例**

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107185430789.png" alt="image-20201107185430789" style="zoom:50%;" />


## 6. 常量成员函数 ##

<img src="https://i.imgur.com/NWsQ5HK.png" style="zoom: 50%;" />

- const关键字：成员函数中没有改变成员变量的操作，如get函数，建议在该方法声明处加入const关键字
- 初始化类时，如果加入了const关键字，则该类不能被修改，只能读取属性，相应的，所调用的成员方法在定义时应该加上const关键字

##  7. 参数传递 传值/传引用 ##

<img src="https://i.imgur.com/fSYQbDM.png" style="zoom: 50%;" />

- 函数参数传递，如果<u>不需要改变参数值</u>，建议使用 const + 引用 减小开销，速度快
- 尽量选择传引用作为函数参数

## 8. 返回值传递 传值/传引用

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107193302509.png" alt="image-20201107193302509" style="zoom: 50%;" />

- 返回值的参数传递也建议尽量传引用

  好处：传返回值时，无论是传值还是传引用，返回值只接收引用，即传参时无需关心是传引用还是值

<img src="https://i.imgur.com/XETl4GC.png" style="zoom:50%;" />

- 不能传reference的情况：返回值是在函数内部新创建的变量，其引用是该函数的一个指向堆局部变量指针，该变量的地址会在函数调 用完成后销毁，则此时返回值不应使用传地址

- 对于临时变量也不能返回引用：例如 + 运算符的重载 

  创建临时对象： `typename( xxx )` -> `int(i)`

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107210007679.png" alt="image-20201107210007679" style="zoom:50%;" />

## 9. 友元  ##

- 友元函数可以自由取得private成员，不声明为friend的话，也可以通过函数来取得私有变量

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107193914915.png" alt="image-20201107193914915" style="zoom: 50%;" />

- 相同类的各个实例对象互为友元，可以通过彼此的内部方法调用传入参数的内部私有成员变量。

  <img src="https://i.imgur.com/72ZMZHz.png" style="zoom:67%;" />

## 10. 操作符重载  ##

- 任何一个成员函数都有一个隐藏的 <u>this指针</u>，不需要显式声明，但是可以使用，指向调用者
- 如上图所所示，在运算符重载过程中隐藏了this指针，该指针编译器会处理，使用者不能显式声明
- 操作符重载时，返回值不能是void，单个操作时不会报错，但连续操作是由于没有返回值会出现问题

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107202144254.png" alt="image-20201107202144254" style="zoom: 50%;" />

**| 附录 - 规范化代码一**

**complex.h**

```c++
#ifndef __MYCOMPLEX__
#define __MYCOMPLEX__

class complex; 
complex&
  __doapl (complex* ths, const complex& r);
complex&
  __doami (complex* ths, const complex& r);
complex&
  __doaml (complex* ths, const complex& r);
```

```c++
class complex
{
public:
  complex (double r = 0, double i = 0): re (r), im (i) { }
  complex& operator += (const complex&);
  complex& operator -= (const complex&);
  complex& operator *= (const complex&);
  complex& operator /= (const complex&);
  double real () const { return re; }
  double imag () const { return im; }
private:
  double re, im;

  friend complex& __doapl (complex *, const complex&);
  friend complex& __doami (complex *, const complex&);
  friend complex& __doaml (complex *, const complex&);
};
```


​	
```c++
inline complex&
__doapl (complex* ths, const complex& r)
{
  ths->re += r.re;
  ths->im += r.im;
  return *ths;
}
 
inline complex&
complex::operator += (const complex& r)
{
  return __doapl (this, r);
}

inline complex&
__doami (complex* ths, const complex& r)
{
  ths->re -= r.re;
  ths->im -= r.im;
  return *ths;
}
 
inline complex&
complex::operator -= (const complex& r)
{
  return __doami (this, r);
}
 
inline complex&
__doaml (complex* ths, const complex& r)
{
  double f = ths->re * r.re - ths->im * r.im;
  ths->im = ths->re * r.im + ths->im * r.re;
  ths->re = f;
  return *ths;
}

inline complex&
complex::operator *= (const complex& r)
{
  return __doaml (this, r);
}
 
inline double
imag (const complex& x)
{
  return x.imag ();
}

inline double
real (const complex& x)
{
  return x.real ();
}

inline complex
operator + (const complex& x, const complex& y)
{
  return complex (real (x) + real (y), imag (x) + imag (y));
}

inline complex
operator + (const complex& x, double y)
{
  return complex (real (x) + y, imag (x));
}

inline complex
operator + (double x, const complex& y)
{
  return complex (x + real (y), imag (y));
}

inline complex
operator - (const complex& x, const complex& y)
{
  return complex (real (x) - real (y), imag (x) - imag (y));
}

inline complex
operator - (const complex& x, double y)
{
  return complex (real (x) - y, imag (x));
}

inline complex
operator - (double x, const complex& y)
{
  return complex (x - real (y), - imag (y));
}

inline complex
operator * (const complex& x, const complex& y)
{
  return complex (real (x) * real (y) - imag (x) * imag (y),
			   real (x) * imag (y) + imag (x) * real (y));
}

inline complex
operator * (const complex& x, double y)
{
  return complex (real (x) * y, imag (x) * y);
}

inline complex
operator * (double x, const complex& y)
{
  return complex (x * real (y), x * imag (y));
}

complex
operator / (const complex& x, double y)
{
  return complex (real (x) / y, imag (x) / y);
}

inline complex
operator + (const complex& x)
{
  return x;
}

inline complex
operator - (const complex& x)
{
  return complex (-real (x), -imag (x));
}

inline bool
operator == (const complex& x, const complex& y)
{
  return real (x) == real (y) && imag (x) == imag (y);
}

inline bool
operator == (const complex& x, double y)
{
  return real (x) == y && imag (x) == 0;
}

inline bool
operator == (double x, const complex& y)
{
  return x == real (y) && imag (y) == 0;
}

inline bool
operator != (const complex& x, const complex& y)
{
  return real (x) != real (y) || imag (x) != imag (y);
}

inline bool
operator != (const complex& x, double y)
{
  return real (x) != y || imag (x) != 0;
}

inline bool
operator != (double x, const complex& y)
{
  return x != real (y) || imag (y) != 0;
}

#include <cmath>

inline complex
polar (double r, double t)
{
  return complex (r * cos (t), r * sin (t));
}

inline complex
conj (const complex& x) 
{
  return complex (real (x), -imag (x));
}

inline double
norm (const complex& x)
{
  return real (x) * real (x) + imag (x) * imag (x);
}

#endif   //__MYCOMPLEX__
```

**complex_test.cpp**

```c++
#include <iostream>
#include "complex.h"

using namespace std;

ostream&
operator << (ostream& os, const complex& x)
{
  return os << '(' << real (x) << ',' << imag (x) << ')';
}

int main()
{
  complex c1(2, 1);
  complex c2(4, 0);

  cout << c1 << endl;
  cout << c2 << endl;
  
  cout << c1+c2 << endl;
  cout << c1-c2 << endl;
  cout << c1*c2 << endl;
  cout << c1 / 2 << endl;
  
  cout << conj(c1) << endl;
  cout << norm(c1) << endl;
  cout << polar(10,4) << endl;
  
  cout << (c1 += c2) << endl;
  
  cout << (c1 == c2) << endl;
  cout << (c1 != c2) << endl;
  cout << +c2 << endl;
  cout << -c2 << endl;
  
  cout << (c2 - 2) << endl;
  cout << (5 + c2) << endl;
  
  return 0;
}
```



## 11. 拷贝构造 与 拷贝赋值 ##

- 拷贝构造 `String s1(); String s2(s1);`
- 拷贝复制 `String s1("hello"); String s2(); s2 = s1;`

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107220011796.png" alt="image-20201107220011796" style="zoom:67%;" />

- String 末尾有 '/0' 结束符 -> `new char[ strlen(str.m_data) + 1]`

- Class中有指针，必须要有<u>拷贝构造和拷贝赋值</u>，并且多半要做动态分配，需要析构函数释放内存，以防内存泄漏

- 析构函数在离开函数作用域之前，释放内存 

  | 实现拷贝构造 与 析构函数：

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107221909751.png" alt="image-20201107221909751" style="zoom:67%;" />

- 在重载“=”赋值运算符时需要检查自我赋值，避免浅拷贝：

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107221547386.png" alt="image-20201107221547386" style="zoom: 50%;" />

| 实现拷贝赋值，需要自我赋值检测，因为赋值时，需要先杀掉自己，再赋值

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201107222453706.png" alt="image-20201107222453706" style="zoom:67%;" />

- 如果没有自我赋值检测，那么自身对象的m_data将被释放，m_data指向的内容将不存在，所以该拷贝会出问题。

## 12. stack堆、heap栈 ##

- stack栈空间：存在于作用域的一块内存空间，作用域结束时会销毁
  - stack object 又称为 auto object，因为作用域结束时，自动调用其析构函数，自动清理
  - static object：`static Complex c2(1,2)`加上关键字 static 成为静态对象，生命周期在作用域结束后仍然存在，程序结束时才会调用其析构函数清理
  - global object：写在大括号之外的全局对象，类似static，作用域是整个程序

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109114859528.png" alt="image-20201109114859528" style="zoom: 50%;" />

- heap堆空间：一块global内存空间，关键字new会动态分配 heap，需要手动 delete

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109115903089.png" alt="image-20201109115903089" style="zoom:67%;" />

## 13. new 操作 与 delete 操作 

- new 的过程：先分配memory，再调用ctor构造函数
  - malloc 分配内存，sizeof 获取需要分配内存的大小
  - 转型
  - 调用构造函数

<img src="https://i.imgur.com/CoqboeP.png" style="zoom: 50%;" />

- delete 过程：
  - 先调用dtor析构函数：将构造函数里分配的动态空间删去
  - 再释放memory：调用 free(ps)

<img src="https://i.imgur.com/LF05Wt3.png" style="zoom:50%;" />

| **内存分配情况**

这里以两个类做出说明：

```c++
class complex
{
	public:
		complex (double r = 0, double i = 0)
		: re (r), im (i)
		{ }
		complex& operator += (const complex&);
		double real () const { return re; }
		double imag () const { return im; }
	private:
		double re, im;
		friend complex& __doapl (complex*,
		const complex&);
};
```


```c++
class String
{
	public:
		String(const char* cstr = 0);
		String(const String& str);
		String& operator=(const String& str);
		~String();
		char* get_c_str() const { return m_data; }
	private:
		char* m_data;
};
```

创建这两个对象后，编译器(VC)给两个对象分配内存如下：每一格一个byte四个字节

complex类：

**debug调试模式下 编译器的内存分配：**

红色部分 - 编译器给complex对象内存插入了头和尾- cookie

灰色部分 - 4*8 + 4大小的信息部分

绿色部分 - complex对象实际占用的空间，计算后有52字节

青色pad部分 - VC以16字节对齐，所以52最近的16倍数是64，还应该填补12字节的空缺

**release模式 下编译器的内存分配** ：只添加了信息头和尾部分

<u>string类：字符串对象本身只有一个指针，四个字节</u>

<img src="https://i.imgur.com/1Ud7vVP.png" style="zoom:67%;" />

数组对象 编译器的内存分配（VC）：

<img src="https://i.imgur.com/G4eXrRE.png" style="zoom:50%;" />

类似的，编译器给对象增加了一些冗余信息部分，对于complex类对象，由于数组有三个对象，则存在8个double，然后编译器在3个complex对象前插入“3”用于标记对象个数。String类的分析方法也类似。

**删除数组对象** 一定需要使用 **delete[ ]** 方法：array new 要搭配 array delete（调用相应次数的dtor，然后再删除整块内存），否则有内存泄漏

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109133940054.png" alt="image-20201109133940054" style="zoom:50%;" />


## 14. String类

String.h 

```c++
#ifndef __MYSTRING__
#define __MYSTRING__

class String
{
public:                                 
   String(const char* cstr=0);    //初始化字符串指针 并赋初值                  
   String(const String& str);    //拷贝构造                 
   String& operator=(const String& str);       //拷贝赋值 传引用
   ~String();      //析构函数                              
   char* get_c_str() const { return m_data; }  //获取字符串指针
private:
   char* m_data; //字符串指针
};

#include <cstring>  //strlen strcpy

inline
String::String(const char* cstr)  //构造函数
{
   if (cstr) {
      m_data = new char[strlen(cstr)+1]; //传进来的字符的长度 + 结束符1，用于分配内存
      strcpy(m_data, cstr);  //拷贝初值内容到新分配的空间
   }
   else {   //未指定初值
      m_data = new char[1];
      *m_data = '\0';
   }
}

inline
String::~String() //析构函数
{
   delete[] m_data;  // delete array 
}

inline
String::String(const String& str) //拷贝构造 const-不改变传入的string
{
   m_data = new char[ strlen(str.m_data) + 1 ];
   strcpy(m_data, str.m_data);
}    

inline
String& String::operator=(const String& str) //拷贝赋值 有返回值 String& 不能是 void  // typename+& -> 引用
{
   if (this == &str) //判断是否是自我赋值   // &+object -> 取地址
      return *this;

   delete[] m_data;
   m_data = new char[ strlen(str.m_data) + 1 ];
   strcpy(m_data, str.m_data);
   return *this;
}

#include <iostream>
using namespace std; 

ostream& operator<<(ostream& os, const String& str)
{
   os << str.get_c_str();
   return os;
}

#endif
```

string_test.cpp

	#include "string.h"
	#include <iostream>
	
	using namespace std;
	
	int main()
	{
	  String s1("hello"); 
	  String s2("world");
	    
	  String s3(s2);
	  cout << s3 << endl;
	  
	  s3 = s1;
	  cout << s3 << endl;     
	  cout << s2 << endl;  
	  cout << s1 << endl;      
	}

## 15. static 关键字

static + 函数/数据 -> 静态 函数/数据

- 静态数据：只有一份，在类class的外部需要定义，可以赋初值，可以不赋

- 静态函数：没有 this point

- 非静态成员函数，调用成员函数时，其实会传入一个调用者的地址 `c1.real() -> c1.real(&c1)`，返回调用者的实部real，即this->real，谁调用谁是real

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109142243499.png" alt="image-20201109142243499" style="zoom:50%;" />

- 静态成员函数，调用成员函数时，不会有地址的传递

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109142336203.png" alt="image-20201109142336203" style="zoom:50%;" />

- ### **单例模式**- 构造函数放在private中，不允许外界构造对象，但可以通过public函数取得private成员，加上关键字static，该对象只能有一个

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109143344277.png" alt="image-20201109143344277" style="zoom:50%;" />

  

## 16. 模板 template

**类模板 class template**

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109143917117.png" alt="image-20201109143917117" style="zoom: 50%;" />

**函数模板 function template**

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109145545362.png" alt="image-20201109145545362" style="zoom:50%;" />

## 17. namespace 命名空间

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109150733964.png" alt="image-20201109150733964" style="zoom: 50%;" />

## 18. Composition 复合

| 类中包含其他类 < 黑色<u>实心</u>菱形（容器）+箭头：Container -> Component > 

- 构造顺序：由内而外
- 析构顺序：由外而内 

### **设计模式 - Adapter**

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109165122345.png" alt="image-20201109165122345" style="zoom:50%;" />

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109165443916.png" alt="image-20201109165443916" style="zoom:50%;" />

## 19. Delegation 委托

| 两个类中用指针相连 <黑色 <u>空心</u>菱形（容器）+箭头：Container -> Component > 

### | 设计模式 - **pimpl**：pointer to implement - 由指针指向真正实现类功能的类 （Handle / Body） **编译防火墙**

- Handle 部分用于对外接口

- Body 部分用于内部实现

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109170929923.png" style="zoom:50%;" />

## 20. Inheritance 继承

| 子类完全继承父类的变量与函数   <空心三角形 + 箭头：子类->父类> 

- 构造顺序：由内而外 - 先调用父类构造函数 再进入子类构造函数

- 析构顺序：由外而内 - 先调用子类的析构函数 再进入父类构造函数

- 父类的析构函数 必须是 虚函数，否则会出现 undefined behavior

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109195550011.png" alt="image-20201109195550011" style="zoom:50%;" />

| 与虚函数搭配

## 21. 虚函数 ##

| 在成员函数之前加上 **virtual 关键字**

- non-virtual 函数：不允许子类重新定义这个函数（override）
- virtual 函数：希望子类重新定义它，并且有默认定义
- pure virtual 函数（纯虚函数）：子类一定要重新定义它，因为它没有默认定义

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109201253691.png" alt="image-20201109201253691" style="zoom: 50%;" />

### | **设计模式 - Template Method** - 父类只定义抽象的函数，子类重写具体实现

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109201501919.png" alt="image-20201109201501919" style="zoom:50%;" />



 **复合 + 继承：** 

- 子类继承base类，并且子类含有复合Component类
- 构造：先调用base的构造函数，再调用Component的构造函数
- 析构：先执行自己，再调用Component的析构函数，再调用base析构函数

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109203359557.png" alt="image-20201109203359557" style="zoom:50%;" />

**委托 + 继承：**

###  **| 设计模式 - 观察者模式**

- 子类中含有 observer 容器向量，需要先通过 attach 注册，每次调用需要 update 更新观察者

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109203919774.png" alt="image-20201109203919774" style="zoom:50%;" />



### **| 设计模式 - Composite**

- 两个子类 继承了 component ，其中一个类含有 component 的委托（指针） 

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109205430609.png" alt="image-20201109205430609" style="zoom: 50%;" />

### **| 设计模式 - Prototype 原型**

- 需要创建未来的class对象

  >   下划线： static
  >
  >   —  负号：private
  >
  >   #井号：protected

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109211756783.png" alt="image-20201109211756783" style="zoom:80%;" />

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109212100027.png" alt="image-20201109212100027" style="zoom: 67%;" />

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201109212309116.png" alt="image-20201109212309116" style="zoom:67%;" />

## 22. explicit 关键字（显式） ##

C++中， 一个参数的构造函数(或者除了第一个参数外其余参数都有默认值的多参构造函数)， 承担了两个角色。 1 是个构造器 ，2 是个默认且隐含的类型转换操作符。

所以， 有时候在我们写下如 AAA = XXX， 这样的代码， 且恰好XXX的类型正好是AAA单参数构造器的参数类型， 这时候编译器就自动调用这个构造器， 创建一个AAA的对象。

这样看起来好象很酷， 很方便。 但在某些情况下（见下面权威的例子）， 却违背了我们（程序员）的本意。 这时候就要在这个构造器前面加上explicit修饰， 指定这个构造器只能被明确的调用/使用， 不能作为类型转换操作符被隐含的使用。

**explicit构造函数是用来防止隐式转换的**。请看下面的代码：

```c++
class Test1
{
public:
    Test1(int n)
    {
        num=n;
    }//普通构造函数
private:
    int num;
};
class Test2
{
public:
    explicit Test2(int n)
    {
        num=n;
    }//explicit(显式)构造函数
private:
    int num;
};
int main()
{
    Test1 t1=12;//隐式调用其构造函数,成功
    Test2 t2=12;//编译错误,不能隐式调用其构造函数
    Test2 t2(12);//显式调用成功
    return 0;
}
```

Test1的构造函数带一个int型的参数，代码23行会<u>隐式转换成调用Test1的这个构造函数</u>。而Test2的构造函数被声明为explicit（显式），这表示不能通过隐式转换来调用这个构造函数，因此代码24行会出现编译错误。

普通构造函数能够被隐式调用。而explicit构造函数只能被显式调用。

c++面向对象高级开发2

c++技术主线：

- 泛型编程 Generic Programming
  - 模板
- 面向对象编程 Object-Oriented Programming
  - this 指针
  - vptr 虚指针
  - vtbl 虚表
  - virtual mechanism 虚机制

## 23. 转换函数 ##

`operator + 转换函数名() + const[一般] { }`

Fraction类对象转换为 double 类型，自动调用double()函数转换：

<img src="C:/Users/SparkJinJin/AppData/Roaming/Typora/typora-user-images/image-20201110165800831.png" alt="image-20201110165800831" style="zoom:50%;" />

## 24. explicit 关键字 与 隐式转换 ##

- non-explicit-one-argument ctor- 隐式单参数构造函数

  - Fraction类重载了“+”运算符，在f+4操作过程中，“4”被编译器隐式转换（构造函数）为Fraction对象，然后通过Fraction重载的“+”运算符参与运算。
  - 与转换函数double同时存在时，会报错ambiguous   

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110170646967.png" alt="image-20201110170646967" style="zoom:50%;" />

- explicit-one-argument ctor - 单参数<u>构造函数前加了 explicit 关键字</u>

  - 不允许编译器不以构造函数的形式自动转换，即前例中 double 4 无法隐式的转为 Fraction 类，无法进行相加操作

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110172057172.png" alt="image-20201110172057172" style="zoom:50%;" />

下图为C++ stl中操作符重载和转换函数的一个应用：

<img src="https://i.imgur.com/01jFo9x.png" style="zoom: 33%;" />

## 25.智能指针 ##

- 智能指针类，通过指针调用类中方法
- 智能指针内部：
  - 需要保存的外部指针，对应于上图的T* px，这个指针将代替传入指针进行相关传入指针的操作
  - 重载“*”运算符，解引用，返回一个指针所指向的对象
  - 重载“->”运算符，返回一个指针，对应于px

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110180759921.png" alt="image-20201110180759921" style="zoom:50%;" />

- 迭代器也是一种智能指针：

  - 迭代器的 * 是取当前node指针指向的对象的data
  - 迭代器的 -> 是取data的地址

  <img src="https://i.imgur.com/Gsty5Hz.jpg" style="zoom: 33%;" />

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110182247841.png" alt="image-20201110182247841" style="zoom:50%;" />

## 26.仿函数 ##

- 某个类中重载 “ `（）`”运算符 -> 仿函数，实质还是一个类，但看起来具有函数的属性。
  每个仿函数其实在背后都集成了一个奇怪的类，如下图所示，这个类不用程序员手动显式声明。

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110182837204.png" alt="image-20201110182837204" style="zoom:50%;" />

- 标准库中的仿函数也同样继承了一个奇怪的类：

<img src="https://i.imgur.com/GqWy1Yz.jpg" style="zoom: 33%;" />

这个类的内容如下图所示，只是声明了一些东西，里面没有实际的变量或者函数，具体的内容将在STL中讨论。

<img src="https://i.imgur.com/G5iodMK.png" style="zoom: 33%;" />

## 27.namespace ##

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110183805826.png" alt="image-20201110183805826" style="zoom:50%;" />

## 28. 类模板 ##

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110183941745.png" alt="image-20201110183941745" style="zoom:50%;" />

## 29. 函数模板 ##

- 与类模板相比，不需要显式地声明传入参数类型，编译器将自动推导类型

- 因为函数模板使用的时候一定是某对象调用的，并且函数调用需要有参数

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110184225112.png" alt="image-20201110184225112" style="zoom:50%;" />

## 30. 成员模板 ##

- 模板里的 member 也是模板【模板里套模板】，使用时需要先确定大类 T1 T2，再确定小类 U1 U2，其中U继承于T

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110215340882.png" style="zoom:50%;" />

- 成员模板在泛型编程里用得较多，为了有更好的可扩展性，以上图为例，T1往往是U1的基类，T2往往是U2的基类：

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110220153084.png" alt="image-20201110220153084" style="zoom:50%;" />

- 模板函数用于智能指针：

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110220850079.png" alt="image-20201110220850079" style="zoom:50%;" />

## 31. 模板特化 specialization ##

- 在模板中指定特定的数据类型【与泛化的不同点】：
- 同时存在时，调用特化

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110221648860.png" alt="image-20201110221648860" style="zoom:50%;" />

- 偏特化

  - 个数：模板有多个参数，只固定前几个，使用特定类型

  - 范围：使用指针时，固定指针类型的模板

    <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110222331033.png" alt="image-20201110222331033" style="zoom:50%;" />

    <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201110222510045.png" alt="image-20201110222510045" style="zoom:50%;" />

## 32. 模板模板参数 ##

- 模板参数中含有模板 - 此时 typename 与 class 等价

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111110602719.png" alt="image-20201111110602719" style="zoom:50%;" />

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111110837882.png" alt="image-20201111110837882" style="zoom:50%;" />

## 33. 数目不定的模板参数（c++11新特性） ##

- 传入多个参数

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111123712775.png" alt="image-20201111123712775" style="zoom:50%;" />



## 34. auto关键字（c++11新特性）

- 可以通过赋值的内容 推导其类型，如下可以通过等号右端推断出变量类型为迭代器

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111124249933.png" alt="image-20201111124249933" style="zoom:50%;" />

## 35. 增强型 for 循环（c++11新特性）

- 遍历容器

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111124850621.png" alt="image-20201111124850621" style="zoom:50%;" />



## 36. reference ##

- reference可以看做是某个被引用变量的别名。`引用的地址和大小都与原变量相同`
- reference常用于参数传递、返回值传递
  - 速度快
  - 写法与传值相同：调用对象的成员函数时 `obj.xxx()`，而传指针时：`obj->xxx()`
  - 函数名相同，参数相同，类型不同，即传值和传引用的函数不能同时存在

```c++
int x = 0;  //四个字节

int* p = &x; //Point to Integer 指针指向x  //32位计算机 指针占4个字节
 
int& r = x; //Reference to Integer r代表x  //与x一致  //实际上是指针实现的

int x2 = 5;
r = x2;  //r = x = x2 此时x、r都等于x2  //r看作x的别名

int& r2 = r; // r2、r都是x的别名 均等于5
```

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111194246726.png" alt="image-20201111194246726" style="zoom:50%;" />

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111195043903.png" alt="image-20201111195043903" style="zoom:50%;" />

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111195733700.png" alt="image-20201111195733700" style="zoom:50%;" />



## 37. vptr 虚指针 和 vtbl 虚函数表 ##

- 继承在内存上是继承了对象的所有数据，以及函数的调用权，基类含有虚函数，则继承的子类也必有虚函数
- 当成员函数声明为虚函数，默认在类对象中加入一个vptr虚指针（不论有几个虚函数都只加一个）
- **一个虚指针vptr指向一个虚函数表vtbl，虚函数表中含有每个虚函数所在的位置**
- 继承当然也会继承虚函数，虚函数（可以）在子类中重写

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111205708184.png" alt="image-20201111205708184" style="zoom:67%;" />

- 定义了三个类，A、B和C，B继承于A,C继承于B，A中有两个虚函数，B中有一个，C中也有一个，B C分别重写了虚函数vfunc1()

- A的对象在内存中：有两个成员变量m\_data1和m\_data2 + 一个虚指针

- 虚指针指向虚函数表：类有虚函数，编译器将给a对象分配一个空间用于**保存虚函数表**，这张表维护着**该类的虚函数地址（动态绑定）**

- 继承后：B也会继承A的虚函数，由于B类重写了A类的vfunc1()函数，所以B类对象的虚函数表有两个虚函数地址，重写的B::vfunc1() + 父类A的A::vfunc2()。C继承同理。上图继承关系总共会有4个不同的虚函数。

- 虚函数的实际调用路径：p指针指向对象，n表示是虚函数表中的第几个虚函数

  ​																	`(*(p->vptr)[n])(p) or (*  p->vtpr[n])(p)` - 虚机制

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111210505039.png" alt="image-20201111210505039" style="zoom: 67%;" />

- 同时上图也用C语言代码说明了编译器底层是如何调用这些函数的，这便是面向对象继承多态的本质。

> 函数静态绑定：会编译成call XXX
>
> 函数**动态绑定**：函数通过**指针**来调用，指针是**向上转型**的（是继承的子类对象的指针），调用的是**虚函数** - 虚机制
>
> 多态：指针有很多类型
>
> 多态，虚指针，动态绑定 指的都是同一件事
>
> 虚函数的使用：1.多态 2.模板方法

## 38. this指针 ##

### **| 设计模式 - Template Method**

> c++中所有的成员函数都有一个隐藏的 this 指针 作为参数

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111212636779.png" alt="image-20201111212636779" style="zoom:50%;" />

- this指针：指向当前对象内存地址的一个指针
- 由于基类和子类中有虚函数，this->Serialize()将动态绑定，等价于`(*(this->vptr)[n])(this)`

## 39. const 常量关键字

- const member functions 保证不更改数据的成员函数

- non-const member functions 不保证不更改数据的成员函数

- const object 数据不能更改

- non-const object 数据可以更改

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111221307863.png" alt="image-20201111221307863" style="zoom: 67%;" />

- 字符串中重载运算符 `[]`，有两个同名函数同时存在，其中一个加了const关键字，即分为 const member functions 与 non-const member functions，两个函数实现 - 读时共享，写时拷贝

  ```c++
  String a = "hello world"; 
  print(a[5]); //只读 调用 operator[] const 重载运算符函数
  a[5] = '1'; //写 调用 operator[] 重载运算符函数 需要考虑copy on write
  ```

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201111223850313.png" alt="image-20201111223850313" style="zoom: 67%;" />

- 当成员函数的 const 和 non-const 版本同时存在，const 对象 只会调用 const 成员函数，non-const 对象 只会调用 non-const 成员函数

## 40. 重载 new 和 delete 操作符 ##

-  **全局范围内** 重载操作符 `::operator new`， `::operator new[]`

  ```c++
  void* myAlloc(size_t size){
      return malloc(size); //分配内存
  }
  
  inline void* operator new(size_t size) //重载 operator new
  {  
      cout<<"jjhou global new()	\n";	
      return myAlloc(size);
  }
  
  inline void* operator new[](size_t size) //重载 operator new[]
  { 
      cout<<"jjhou global new[]()	\n";	
      return myAlloc(size);
  }
  ```

-   **全局范围内**重载操作符 `::operator delete, ::operator delete[]`

  ```c++
  void myFree(void* ptr){
      return free(ptr); //释放内存
  }
  
  inline void operator delete(void* ptr) //重载 operator delete
  { 
      cout<<"jjhou global delete()	\n";	
      myFree(ptr);
  }
  
  inline void operator delete[](void* ptr) //重载 operator delete[]
  { 
      cout<<"jjhou global delete[]()	\n";	
      myFree(ptr);
  }
  ```

<img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201112184951132.png" alt="image-20201112184951132" style="zoom: 67%;" />

- **在类中**重载 operator new/delete 成员函数

  ```c++
  class Foo {
  	public:
      	void* operator new(size_t); // 使用new构造对象时，会调用
      	void operator delete(void*,size_t); // 使用delete释放内存时，会调用
  }
  ```

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201112185136644.png" alt="image-20201112185136644" style="zoom: 67%;" />

- **在类中**重载 operator new/delete[] 成员函数

  ```c++
  class Foo {
  	public:
      	void* operator new[](size_t); // 使用new构造对象时，会调用
      	void operator delete[](void*,size_t); // 使用delete释放内存时，会调用
  }
  ```

  <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201112185204147.png" alt="image-20201112185204147" style="zoom: 67%;" />

- 已经在类中重载了 operator new/delete 成员函数，但创建类时需要调用全局的 operator new/delete 函数

  ```c++
  Foo* pf = new Foo; //若无成员函数重载，则调用全局 globals
  delete pf;
  
  Foo* pf = ::new Foo;//即使有成员函数重载，也调用全局 globals
  ::delete pf;
  ```

- **重载 new()，delete()** - placement new

  - 重载 class member operator new()，但每一个版本的重载都**需要是独特的参数列**，并且第一个参数必须是 size_t（需要指导分配的内存空间），其余参数以 new 所指定的 placement arguments 为初值。

  - 使用形式：`Foo* pf = new(300,'c')Foo;` - 以小括号为表现的额外的参数

  - 用处：可以多分配内存，自定义要分配的内存大小

  - 也可以重载 class member operator delete()，但它们不会被 delete 调用。只有当 new 调用的 ctor 抛出 exception，才会调用重载版的 operator delete()，不写对应版本的 operator delete() 也不会报错，至少放弃处理异常

    <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201112192534612.png" alt="image-20201112192534612" style="zoom: 67%;" />

    <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201112192654992.png" alt="image-20201112192654992" style="zoom:67%;" />

    <img src="https://gitee.com/sparkle_zz/markdown-pics/raw/master/image-20201112192718178.png" alt="image-20201112192718178" style="zoom:67%;" />