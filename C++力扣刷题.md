# 常用语法

## 语法框架

```c++
#include<iostream>
using namespace std;
int mian(){
    return 0;
}
```

## 基本类型

### int

```c++
int转string
string s = to_string(i);
```

### String

```c++
string ret; //进出方式 类似栈
ret.push_back('*');//末尾进数组
ret.pop_back();//末尾出数组

string str;
//取字符串
string::substr(index,len);  //取的第一个字符的下标，以及长度

//转int
int val = stoi(str);
```

## 数组

定义数组：长度固定

```c++
double balance[5] = {1000.0, 2.0, 3.4, 7.0, 50.0};
// type arrayName [ arraySize ];
```

**vector数组：**

vector数组是可以**存放任意数据类型**（类，结构，普通变量类型等）的**动态数组**，相当于顺序储存的线性表，寻找元素快，插入元素慢

```c++
#include<vector>

//一维
vector<int> vec1{ 1, 2, 3, 4, 5, 6 }; //声明并初始化vec1
 vector<int> vec(26, INT_MAX);
//二维
vector<vector<int>> zmatrix;
//声明数组并赋值
vector<vector<bool>> isUse(m,vector<bool>(n,true));
//插入元素
vec1.push_back(1); //末尾插入
vec1.emplace_back();
//访问数组
vec1.front(); //第一个元素
vec1.back()  ; //最后一个元素 
vec.size(); //数组长度

//数组空
vec.empty()

```



## 链表

定义链表：

```c++
struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};
```

定义一个val=0的链表节点：

`ListNode* zero = new ListNode(0);`

定义一个空节点：

` ListNode* nullPoint = nullptr;`

节点的next指针：

`cur->next`

判断节点为空：

`if(cur==nullptr)`

delete方法 删除无用节点 避免内存泄漏：

`delete 节点名`



## 字符串

字符串数组（C字符串）：

```c++
#include <iostream>
#include <cstring>
using namespace std;

char str[] = "Hello"; //其实是字符串数组？默认是以null结尾
//char str[11] = "Hello";  //11为长度
int num[26]={0};  //num=[0,0,……]


//常用方法

//复制
strcpy(s1, s2); //复制字符串 s2 到字符串 s1。
//连接
strcat(s1, s2); //连接字符串 s2 到字符串 s1 的末尾。
//长度
strlen(s1); //返回字符串 s1 的长度。
//比较
strcmp(s1, s2); //如果 s1 和 s2 是相同的，则返回 0；如果 s1<s2 则返回值小于 0；如果 s1>s2 则返回值大于 0。
//子字符：
strchr(s1, ch); //返回一个指针，指向字符串 s1 中字符 ch 的第一次出现的位置。
//子串
strstr(s1, s2);//返回一个指针，指向字符串 s1 中字符串 s2 的第一次出现的位置。

//字符串 字符交换
swap(s[i],s[j]); //std中定义

```

String 类：

```c++
#include <iostream>
#include <string>
 
using namespace std;

string str1 = "Hello";
string str2 = "World";

//复制
str1 = str2;
//连接
str3 = str1 + str2;
//长度
len = str3.size();

//遍历
for(int i=0;i<str.length();i++)
	cout<<str[i];
```

排序 sort：

```c++
#include<algorithm>
int a[]={45,12,34,77,90,11,2,4,5,55};
sort(a,a+10); //默认升序 a是这个数组的首地址

//定义降序
bool cmp(int a,int b);
bool cmp(int a,int b){
 　　return a>b;
}
sort(a,a+10,cmp);

String s = "54321";
sort(s.begin(),s.end());
```



## 哈希 map

```c++
定义一个map：
map[0] = 100
map[5] =200
-> map[k,v] =  [0,100], [5,200] 
-> map.size() = 2

#include <map>
map<int, string> map; //<K,V>

//插入元素：
map.insert(stu<int, string>(2, "name")); 
//or
map[key] = value;

//查找
value = map[key]
//or
value = map.find(key)->second
//未查找到
if(map.find(key) == map.end()){ }
 
//删除
int n = map.erase(key); 
//迭代器删除
iter = map.find(2);
cout<< iter->second;
map.erase(iter);

//清空
map.clear();

//遍历
//auto
for(unordered_map<char,int>::iterator it=map.begin();it!=map.end();it++){
    if(it->second!=0) //second指向value
        return false;
}

//map计数
unordered_map<int,int> arrCount;
for(int i:arr){
    arrCount[i]++;
}
```

## 迭代器

```c++
//迭代器: 对容器进行访问和遍历的数据结构
//常见容器：vector deque list set multiset map multimap

it = map.begin()  //容器头
it = map.end()  //容器尾
it = next(it)  //同 ++it //向后移动  
it = prev(it)  //同 --it //向前移动 
map.begin() == map.end. //容器为空
  
//遍历
for(auto it = map.begin(); it != map.end(); it++){ ... }

```



## 数据结构

### **栈**

```
头文件：#include <stack>
定义：stack<int> s;
进栈：s.push(x);
出栈：s.pop(); //没有返回值
取栈顶：val = s.top();
栈空：s.empty();
长度：s.size();
交换两个栈: swap(a,b); //非成员函数
```

### 队列

```c++
头文件：#include <queue>
定义：queue<int> q;
进队尾：q.push(i);
出队首：q.pop(); //无返回
取队首：q.front();
队空：q.empty();
长度：q.size();
交换两个队列: swap(a,b); //非成员函数
```

**双端队列**

```c++
头文件：#include <deque>
定义：deque<int> d;
进队首：d.push_front(i);
进队尾：d.push_back(i);
出队首：d.pop_front();
出队尾：d.pop_back();
取队首：d.front() //有返回值
取队尾：d.back() //有返回值
队首的指针：begin()   //队首的指针，指向队首元素
队尾的指针：end()`  //队尾元素的下一位作为指针
队列空：d.empty();
清空：d.clear();
在第一个元素后插入：insert(d.begin()+1,i);
迭代器：
deque<int>::iterator rit;
    for(rit = d.begin(); rit != d.end(); rit ++)
        cout<<*rit<<" ";
    cout<<endl;
```

**优先队列** 

在队列的基础上添加了一个内部排序，本质是堆实现的

```
#include <queue>
默认定义大顶堆：priority_queue<int> q;  //队首返回队列中的最大值
定义小顶堆：priority_queue<int, std::vector<int>, std::greater<int> > q;  //队首返回队列中最小值
进队尾：q.push(i);  //并排序
出队首：q.pop(); //无返回
取队首：q.top();
队空：q.empty();
长度：q.size();
原地构造一个元素并插入队列: empalce();
```







### **二叉树**

结构体：

```c++
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
```

定义指向树的root节点的指针：`TreeNode* root`

定义一个树节点：`TreeNode node = new TreeNode(5);	node->left = new TreeNode(6); ……`

判断树指针非空：`if(node!=nullptr)`

- 先序遍历：

  ```c++
  vector<int> vec;
  void dfs(TreeNode* cur) {
      if (cur == NULL) return;
      vec.push_back(cur->val);    // 中 ，同时也是处理节点逻辑的地方
      dfs(cur->left);  // 左
      dfs(cur->right); // 右
  }
  ```

- 中序遍历

  ```c++
  dfs(cur->left);  // 左
  vec.push_back(cur->val);    // 中
  dfs(cur->right); // 右
  ```

- 后序遍历

  ```c++
  dfs(cur->right); // 右
  vec.push_back(cur->val);    // 中
  dfs(cur->left);  // 左
  ```

## STL 用法

- **accumulate累加算法**

  ```c++
  int sum = accumulate(vec.begin() , vec.end() , 0);
  //accumulate(vec.begin() , vec.end() , 累加初值);			
  ```

  ```c++
  string sum = accumulate(v.begin() , v.end() , string(" "));
  //从空字符串开始，把vec里的每个元素连接成一个字符串。
  ```

- **max_element函数和min_element函数**

  ```c++
  #include<iostream>
  #include<algorithm>
  using namespace std;
  int main()
  {
      int a[]={4,2,3,8,5};
      int len=sizeof(a)/sizeof(int);
      cout<<*max_element(a,a+len)<<endl; //输出集合最大元素
      cout<<*min_element(a,a+len)<<endl;//输出集合最小元素
      return 0;
  }
  ```

  ```c++
  vector<int>& nums;
  int maxNum = *max_element(nums.begin(), nums.end());
  ```

  

# 常用算法

## 总结

最小生成树[算法](https://www.nowcoder.com/jump/super-jump/word?word=算法)

- Kruskal：加边法，每次选最小边连接，保证连接的两点不再一颗树上，反之丢弃，直到n-1条边

- Prim：加点法：选择代价最小的边的两点，寻找两点之外，与两点距离最小的点，加入该生成树，直到所有点都加入

## 链表

#### [剑指 Offer 24. 反转链表](https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof/)

- 两个链表指针 a = nullptr，b = head
- 将 b->next = a ，a、b 前进（设置中间变量tmp存原本的b->next）
- 直到 b == nullptr 链表结束 返回 a

## 字符串

#### [剑指 Offer 67. 把字符串转换成整数](https://leetcode-cn.com/problems/ba-zi-fu-chuan-zhuan-huan-cheng-zheng-shu-lcof/)

- 认真审题（第一个遇到的非空格字符，不是符号也不是数字的话，直接 return 0）
- res 需声明为 long
- 删去开头空格
- 判断符号
- 直接开始找连续数字
- 判断边界：`if(c==1 && res>INT_MAX) return INT_MAX;` `if(c==-1 && -res<INT_MIN) return INT_MIN;`

## 数组

#### [剑指 Offer 39. 数组中出现次数超过一半的数字](https://leetcode-cn.com/problems/shu-zu-zhong-chu-xian-ci-shu-chao-guo-yi-ban-de-shu-zi-lcof/)

- 排序 返回中位数 o(N logN)

- 哈希表计数 o(N)

- 摩尔投票算法：设众数x为nums[i] 遇到与nums[i]相同的 count++不同则count--;count==0时，重新设置x  -> 本质是根据出现次数判断

  ```c++
  int count = 0;
  int res = 0;
  for(auto n : nums){
      if(count==0){
          //重新计数
          res = n;
      }
      if(n==res) count++;
      else count--;
  }
  return res;
  ```

#### [剑指 Offer 04. 二维数组中的查找](https://leetcode-cn.com/problems/er-wei-shu-zu-zhong-de-cha-zhao-lcof/)

- 从右上开始逐行查找
- 大于当前元素：行++
- 小于当前元素：列--
- 直到索引超出范围

#### [剑指 Offer 29. 顺时针打印矩阵](https://leetcode-cn.com/problems/shun-shi-zhen-da-yin-ju-zhen-lcof/)

- 顺时针遍历矩阵
- 利用`while(true)`循环模拟遍历
- 设 上边界 top，下边界 bottom，左边界 left，右边界 right
- 循环
  - 从左到右：`for(int i = left; i <= right; i++) res.push_back(arr[top][i])`;
  - 判断是否结束循环：top需+1 `if(++top > bottom) break;`
  - 从上到下：`for(int i = top; i <= bottom; i++) res.push_back(arr[i][right]) ;`
  - 判断是否结束循环：right需-1 `if(--right < left) break;`
  - 从右到左：`for(int i = right; i >= left; i--) res.push_back(arr[bottom][i])`;
  - 判断是否结束循环：bottom需-1 `if(--bottom < top) break;`
  - 从下到上：`for(int i = bottom; i >= top; i--) res.push_back(arr[i][left])`;
  - 判断是否结束循环：left需+1 `if(++left > right) break;`
- `return res;`



## 栈 & 队列

#### [剑指 Offer 09. 用两个栈实现队列](https://leetcode-cn.com/problems/yong-liang-ge-zhan-shi-xian-dui-lie-lcof/)

- 设置两个栈s1、s2
- 入队：进栈s1
- 出队：s2出栈，如果s2为空，将s1元素翻转进s2
  - 如果s2为空，将s1元素依次出栈再进栈s2
  - 如果此时s2仍为空，返回-1
    - 否则，返回s2栈顶元素
- 时间复杂度：
  - 入队： o(1)
  - 出队：o(1) - 出栈n个元素，翻转n次，平均复杂度仍为1

```c++
class CQueue {
public:
    stack<int> s1,s2;
    
    CQueue() {
        while (!s1.empty()) {
            s1.pop();
        }
        while (!s2.empty()) {
            s2.pop();
        }
    }
    
    void appendTail(int value) {
        s1.push(value);    
    }
    
    int deleteHead() {
        //每s2空的时候 再将s1翻转进s2 否则直接直接返回s2栈顶元素
        if(s2.empty()){
            while(!s1.empty()){
                s2.push(s1.top());
                s1.pop();
            }
        }
        //s2是否空
        if(s2.empty()){
            return -1;  //空返回-1
        }else{
            //非空 返回s2栈顶元素
            int tmp = s2.top();
            s2.pop();
            return tmp;
        }
    }
};
```

#### [剑指 Offer 30. 包含min函数的栈](https://leetcode-cn.com/problems/bao-han-minhan-shu-de-zhan-lcof/)

- 设置一个栈s负责入栈出栈，另一个smin记录剩余栈内元素的最小值
- smin的处理：
  - 栈空时，x直接入栈
  - 非空时，比较当前入栈元素x与栈顶元素大小
    - 比当前栈顶元素小：说明当x入栈之后，栈最小值是x，则x入栈smin
    - 反之：说明当x入栈之后，栈最小值是smin.top()，则smin.top()入栈smin
  - 出栈时与s同步出栈
- 改进：x小于等于当前栈顶元素就进栈，否则不处理，即smin.top()不重复进栈，s出栈时判断出栈元素与smin栈顶是否相等，相等则smin也出栈，反之不处理
- 时间复杂度：o(1)

```c++
class MinStack {
public:
    /** initialize your data structure here. */
    stack<int> s;
    stack<int> smin;  //维护一个栈存储 剩余元素的最小值
    MinStack() {
        while(!s.empty()){
            s.pop();
        }
        while(!smin.empty()){
            smin.pop();
        }
    }
    
    void push(int x) {
        s.push(x);
        if(smin.empty()) smin.push(x);
        else{
            if(x<smin.top()) smin.push(x); //新入栈的元素x小于 minstack 的栈顶值 x推入栈
            else smin.push(smin.top());  //反之 取当前栈最小值 入栈
        }
    }
    
    void pop() {
        s.pop();
        smin.pop();
    }
    
    int top() {
        return s.top();
    }
    
    int min() {
        return smin.top();
    }
};
```



#### [剑指 Offer 59 - II. 队列的最大值](https://leetcode-cn.com/problems/dui-lie-de-zui-da-zhi-lcof/)

- 设置一个普通队列，实现入队出队
- 设置一个双端队列，存储剩余队列元素中的最大元素 - 本质是一个队尾最大的降序队列
- 每次新元素x入队时，所有小于x的队尾元素均出队，x再进队尾
- 例：当前队列q：2131，q_max：23，当x=1，q_max：123；当x=4，q_max：4（23均出队）
- 时间复杂度：o(1) - n个元素入队时，更新q_max队列，最多出栈n次，平均还是o(1)

```c++
class MaxQueue {
public:
    queue<int> q;  
    deque<int> qmax;//维护一个额外的双端队列 
    MaxQueue() {

    }
    
    int max_value() {
        if(qmax.empty()) return -1;
        return qmax.front();
    }
    
    void push_back(int value) {
        //入栈
        while(!qmax.empty() && qmax.back()<value){
            qmax.pop_back();
        }
        q.push(value);
        qmax.push_back(value);
    
    }
    
    int pop_front() {
        if(q.empty()) return -1;
        else{
            int tmp = q.front();
            q.pop();
            if(tmp==qmax.front()) qmax.pop_front();
            return tmp;
        }
    }
};		
```

## 哈希表

`unordered_map<int, int> map;`

#### [剑指 Offer 03. 数组中重复的数字](https://leetcode-cn.com/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof/)

- 快排 or sort o(NlogN)

- 哈希 o(N)  进阶：哈希表用数组代替->用本身代替

  ```c++
  unordered_map<int, int> numsMap;
  for(auto n:nums){
      if(numsMap.find(n)!=numsMap.end()) return n; //已经存在
      numsMap[n] = 1;
  } 
  ```

- 原地置换/原地哈希 o(N) ：判断 nums[ i ] ？= i

  ```c++
  for(int i=0; i<nums.size(); i++){
      while(i!=nums[i]){
          if(nums[nums[i]]!=nums[i]){
              int tmp = nums[nums[i]];
              nums[nums[i]] = nums[i];
              nums[i] = tmp;                
          }else return nums[i];
      }
  }
  return 0;
  ```



#### [剑指 Offer 48. 最长不含重复字符的子字符串](https://leetcode-cn.com/problems/zui-chang-bu-han-zhong-fu-zi-fu-de-zi-zi-fu-chuan-lcof/) ==双指针+哈希表==

- i = 0, j = 0, j 向右移动
- 判断 s[j] 是否在哈希表中
  - 在的话，表示遇到重复字符，取出重复字符上一次出现的位置 map[s[j]]，i 指针位置更新：i = max( map[s[j]], i )
- <s[j] , j> 插入哈希表
- res = max ( res, j-i+1 )

进阶：

- 使用 `vector<int> dp(128,-1);` 长度为128的数组 代替哈希表

- 如何判断 `s[j]` 是否出现过：`if(dp[s[j]] != -1)`

  ```c++
  int i = 0;
  int res = 0;
  vector<int> dp(128,-1);
  for(int j = 0; j<s.length(); j++){
      if(dp[s[j]!=-1]){
          //遇到重复字母
          i = max(i,dp[s[j]] + 1);
      }
      dp[s[j]] = j;
      res = max(res,j-i+1);           
  }
  return res;
  ```

#### [剑指 Offer 50. 第一个只出现一次的字符](https://leetcode-cn.com/problems/di-yi-ge-zhi-chu-xian-yi-ci-de-zi-fu-lcof/)

- 遍历字符，map 存储出现次数 - 注意map不会按插入顺序排序，底层是红黑树，有自己的排序规则
- 再次遍历字符，因为要寻找第一个次数为1的字符，仍需重头遍历；

进阶

- 第一遍遍历字符的时候，再用一个数组按插入顺序存储 key
- 按照 key 继续遍历，寻找map中第一个次数为1的字符

进阶

- 用128长度数组代替map





## 双指针

#### [剑指 Offer 22. 链表中倒数第k个节点](https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/)

- 快慢指针：k--; 先移动快指针
- 空间换时间：用 链表数组 存储链表节点 `vector<ListNode*> list; return list[list.size()-k];`

#### [剑指 Offer 58 - I. 翻转单词顺序](https://leetcode-cn.com/problems/fan-zhuan-dan-ci-shun-xu-lcof/)

- i 从后往前遍历每个字符（i>=0），遇到非空格（or i>=0）记录当前下标为 j
- 再次遇到非空格（or i>=0）的时候，res += s.substr( i+1 . j-i )； res += " ";
- 由于每次遍历完一个单词都会加 " "，最后返回要删除最后一个字符

进阶 c++ stringstream 取巧

- 构建字符流 `istringstream input(s);`
- ` while(input>>t) stack1.push(t); //每个单词进栈`
- 再出栈连接 各个字符串

#### [56. 合并区间](https://leetcode-cn.com/problems/merge-intervals/)

先排序再遍历 `o(n) = nlogn`

- `i = v[0][0], j = v[0][1]`
- 遍历 `v from 1:n`
  - `j<v左端点：输出[i,j]; 更新i,j指向当前v `
  - `j>=v左端点：一定跨区间了 j = max(j,v又端点)`
- 结束遍历，输出最后一个 `[i,j];`

#### [977. 有序数组的平方](https://leetcode-cn.com/problems/squares-of-a-sorted-array/)

```c++
class Solution {
public:
    vector<int> sortedSquares(vector<int>& A) {
        int start = 0; //头指针
        int last = A.size()-1;  //尾指针
        vector<int> res(A.size());
        int i=A.size()-1;  //从后插入数组
        while(start<=last){
            if(abs(A[start])>abs(A[last])){
               res[i] = A[start]*A[start]; 
               start++;
            }
            else{
              res[i] = A[last]*A[last];  
              last--;
            }
            i--;
        }
        return res;
    }
};
```

#### [925. 长按键入](https://leetcode-cn.com/problems/long-pressed-name/)

```C++
class Solution {
public:
    bool isLongPressedName(string name, string typed) {
        if(name.size()>0&&typed.size()==0) return false;
        int i=0,j=0;
        char tmp;
        while(j<typed.size()){
            if(name[i]==typed[j]){
                tmp = name[i];
                j++;
                if(i<name.size()-1) i++;   //i移动到末尾就不动了                                         
            }else{
                if(typed[j]==tmp){
                    j++;
                }else return false; //false:两指针的元素不等且不等于前一个元素
            }
        }
        if(name[i]!=typed[j-1]) return false;  //false:循环结束 两指针不等
        return true;
    }
};
```

#### [763. 划分字母区间](https://leetcode-cn.com/problems/partition-labels/)

#贪心算法 #双指针

```c++
class Solution {
public:
    vector<int> partitionLabels(string S) {
        int helper[26]; //记录每个字母最后出现的位置
        for(int i=0;i<S.size();i++){
            helper[S[i]-'a'] = i;
        }

        vector<int> res;
        int i=0,j=0;
        int start=0;
        while(i<S.size()){
            start = i;
            j = helper[S[i]-'a']; //当前s[i]对应的字母 最后一次出现的位置
            while(i<j){    
                if(helper[S[i]-'a']>j){
                    j = helper[S[i]-'a']; //移动j
                }
                i++; //移动i
            }
            res.push_back(j-start+1);
            start = j+1;
            i++;j++;           
        }
        return res;
    }
};
```

#### [234. 回文链表](https://leetcode-cn.com/problems/palindrome-linked-list/)

#快慢指针 #递归 

法一：遍历链表 所有节点进栈/数组；再遍历链表的前半部分，比较其与栈/数组前半部分是否相等 o(n) | o(n)

法二：递归，比较是否相等 o(n) | o(n) ：计算机运行递归函数时，暂存的变量是放在堆栈中的，完成被调函数后弹出栈顶部元素，则递归函数将在堆栈中创建 n个堆栈帧	==链表递归模板==

```c++
class Solution {
public:
    ListNode* front;  //全局变量
    bool reverseList(ListNode* head){
        if(head!=nullptr){
            //递归 到链表最后的空指针 reverList(head->next=nullptr) = true 此时head指向最后一个节点
            if(!reverseList(head->next)){
                return false; //一旦有某一次回调中返回了false 则一直执行这一步返回false
            }
            //开始比较 相同则返回true继续回调 front前进
            if(head->val==front->val){
                front=front->next;
            }else return false; //不相同 则返回false
        }
        return true;
    }
    bool isPalindrome(ListNode* head) {
        front = head; //front负责向后传递
        return reverseList(head); //head先递归到最后一个节点 开始向前传递
    }
};
```

法三：快慢指针 o(n) | o(1)：通过快慢指针找到链表中间节点，反转中间节点之后的节点，比较两段链表值相等否 （[143. 重排链表](https://leetcode-cn.com/problems/reorder-list/)

==快慢指针模板==

```c++
class Solution {
public:
    //反转链表
    ListNode* reverList(ListNode* head){
        ListNode* tmp = nullptr;
        while(head!=nullptr){
            ListNode* next = head->next;
            head->next = tmp;
            tmp = head;
            head = next;
        }
        return tmp;
    }
    bool isPalindrome(ListNode* head) {
        if(head==nullptr) return true;
        //快慢指针
        ListNode* fast = head;
        ListNode* slow = head;
        //链表为偶数时 fast指向倒数第二个节点
        //链表为奇数时 fast指向倒数第一个节点
        //slow->next 永远 是后半段开头
        while(fast->next!=nullptr && fast->next->next!=nullptr){
            fast = fast->next->next;
            slow = slow->next;
        }
        //反转链表
        ListNode* head2 = reverList(slow->next); 
        slow->next = nullptr; //将slow的next断掉
        //比较
        while(head2!=nullptr){
            if(head->val==head2->val){
                head=head->next;
                head2=head2->next;
            }else return false;
        }
        return true;

    }
};
```

#### [143. 重排链表](https://leetcode-cn.com/problems/reorder-list/)

#链表#快慢指针#反转链表

```c++
/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    void reorderList(ListNode* head) {
        if(head!=nullptr&&head->next!=nullptr){
            ListNode* mid = midList(head); //找到中间节点
            ListNode* head2 = reverseList(mid->next); //中间节点之后的链表反转
            mid->next = nullptr; //中间节点为res的最后一个节点 next=null
            corperate(head,head2);   //合并两链表
        }
    }

    ListNode* midList(ListNode* head){
        ListNode* slow = head;
        ListNode* fast = head;
        while(fast->next!=nullptr && fast->next->next!=nullptr){
            slow = slow->next;
            fast = fast->next->next;
        }
        return slow;
    }

    ListNode* reverseList(ListNode* head){
        ListNode* tmp = nullptr;
        while(head->next!=nullptr){
            ListNode* next = head->next;
            head->next = tmp;
            tmp = head;
            head = next;
        }
        head->next = tmp;
        return head;
    }

    void corperate(ListNode* head, ListNode* head2){

        while(head2!=nullptr){
            ListNode* tmp = head->next;
            ListNode* tmp2 = head2->next;            
            head->next = head2;
            head2->next = tmp;
            head = tmp;
            head2 = tmp2;        
        }

    }

};
```

## 二分法

#### [剑指 Offer 11. 旋转数组的最小数字](https://leetcode-cn.com/problems/xuan-zhuan-shu-zu-de-zui-xiao-shu-zi-lcof/)

法一

- 先除去数组前端与最后一位相等的数
- 查找分割点：分割点左侧>右端点，分割点右侧<=右端点
- right 指针 最后是分界线左侧的数
- left 指针 最后是分界线右侧的数
- 返回 nums[left]

法二

- 分界条件：
  - 中值<右端点 - 分界点在[左端点，中值]
  - 中值>右端点 - 分界点在[中值，右端点]
  - 中值=右端点 - 右端点有重复元素 右指针--
- 返回 nums[left]

#### [剑指 Offer 53 - I. 在排序数组中查找数字 I](https://leetcode-cn.com/problems/zai-pai-xu-shu-zu-zhong-cha-zhao-shu-zi-lcof/) 

- 二分法 - 排序数组中的搜索问题

  - 寻找最左端元素

    ```c++
    int findLeftTarget(vector<int>& nums, int target, int left, int right){
        while(left<=right){
            int mid = (left + right) >> 1;
            if(nums[mid]>=target){  //区别
                right = mid-1;
            }else{
                left = mid+1;
            }
        }
        return left;
    }
    ```

  - 寻找最右端元素

    ```c++
    int findRightTarget(vector<int>& nums, int target, int left, int right){
        while(left<=right){
            int mid = (left + right) >> 1; 
            if(nums[mid]>target){ //区别
                right = mid-1;
            }else{
                left = mid+1;
            }
        }
        return right;
    }
    ```

#### [剑指 Offer 53 - II. 0～n-1中缺失的数字](https://leetcode-cn.com/problems/que-shi-de-shu-zi-lcof/)

- 二分法 - 排序数组中的搜索问题

- 该数组分为两个连续片段，左端nums[i]==i，右端nums[i]!=i

- 目标：寻找 num[i]!=i 该片段里 左端第一个元素

  ```c++
  int missingNumber(vector<int>& nums) {
      int left = 0, right = nums.size()-1;
      //寻找num[i]!=i 该片段里 左端第一个元素
      while(left<=right){
          int mid = (left+right)>>1;
          if(nums[mid]!=mid){  //区别
              right = mid-1;
          }else{
              left = mid+1;
          }
      }
      return left;
  ```

  

## 二叉树

先序遍历：中 -> 左 ->右

中序遍历：左 -> 中 -> 右

后序遍历：右 -> 左 ->中

#### [剑指 Offer 07. 重建二叉树](https://leetcode-cn.com/problems/zhong-jian-er-cha-shu-lcof/) 前序+中序

- 递归

  - 通过前序遍历找到根节点的值，前序遍历第一个点为根节点

  - 根据根节点在中序遍历中的位置，将中序遍历分为 左子树段 和 右子树段

  - 当 段两端 索引 left>right 的时候结束递归，即 left = right 的时候，指向的单个元素，就是上一个节点的左/右节点

  - 寻找根节点在中序遍历中的位置，需要先将中序遍历的值与其索引放入哈希表，方便查找

    ```c++
    TreeNode* build(vector<int>& preorder, vector<int>& inorder, int root, int left, int right){
        //前序遍历：中 -> 左 -> 右
        //中序遍历：左 -> 中 -> 右
        //root是该段前序遍历中的第一个数
        //left是该段左端点，right是右端点
        //目标：在中序遍历的索引中，根据根节点位置，分出左子树，右子树，继续递归
        if(left>right) return nullptr;
        int rootValue = preorder[root];
        int rootIndex = map.find(rootValue)->second; //中序遍历中根节点的索引
        TreeNode* treeRoot = new TreeNode(rootValue);
    
        //左子树根结点在前序遍历中：preorder[root+1]
        //左子数左右节点在中序遍历中：newleft = left; newright = rootIndex(中) - 1;
        treeRoot->left = build(preorder,inorder,root+1,left,rootIndex-1);
        //右子树根结点在前序遍历中：preorder[root+左子数长度+1]
        //右子数左右节点在中序遍历中：newleft = rootIndex(中)+1; newright = right;
        treeRoot->right = build(preorder,inorder,root+(rootIndex-left)+1,rootIndex+1,right);
    
        return treeRoot;
    }
    ```

- 迭代

  - 指针 i 指向 前序遍历pre，指针 j 指向中序遍历in

  - 中序遍历的第一个数，是最左侧元素

  - 目标是找到当前 i 指针指向的元素的位置

  - 栈中存放，i 经过但 j 未经过的元素

  - ------伪代码------

  - pre[0] 进栈为根节点

  - val = 当前 i 指针指向的元素的位置

  - If 栈顶元素 != j 指向元素（中序遍历第一个数），说明 val 是栈顶元素的左节点

    - 栈顶元素左节点指向val
    - val 进栈

  - else 

    - While 栈顶元素 == j 指向元素，说明 val 是某个节点的右节点
      - j++，栈顶元素出栈
      - 直到 不相等 or 栈空

  - val 即为最后出栈的节点的右节点

  - val 进栈

  - 返回根节点

    ```c++
    TreeNode* buildTree(vector<int>& preorder, vector<int>& inorder) {
        if(preorder.empty()) return nullptr;
        stack<TreeNode*> s;
        int j = 0;
        TreeNode* root = new TreeNode(preorder[0]);
        s.push(root);
        for(int i = 1; i < preorder.size(); i++){
            int preVal = preorder[i];  //每轮找到 preVal 应该插入的位置
            TreeNode* node = s.top();
            if(node->val != inorder[j]){
                node->left = new TreeNode(preVal); //preVal仍是左节点
                s.push(node->left);  
            }else{
                //preVal是右节点
                while(!s.empty() && s.top()->val == inorder[j]){
                    node = s.top();
                    s.pop();
                    j++;
                }
                node->right = new TreeNode(preVal); //preVal是右节点
                s.push(node->right);
            }
        }
        return root;
    
    }
    ```



## 深度优先 广度优先 

#### [剑指 Offer 26. 树的子结构](https://leetcode-cn.com/problems/shu-de-zi-jie-gou-lcof/)

- DFS
- 在A树中DFS遍历，遇到相同的再在AB中同时进行DFS遍历
- 若返回False（不为以当前节点为根节点的子结构），则继续在A中向下遍历

#### [剑指 Offer 27. 二叉树的镜像](https://leetcode-cn.com/problems/er-cha-shu-de-jing-xiang-lcof/)

- DFS 递归 交换左右节点
- 用栈/队列 迭代 交换栈中元素左右节点 子节点再进栈

#### [剑指 Offer 28. 对称的二叉树](https://leetcode-cn.com/problems/dui-cheng-de-er-cha-shu-lcof/)

- DFS 递归，比较左子树左节点，与右子树右节点：`return dfs(leftnode->left,rightnode->right)&&dfs(leftnode->right,rightnode->left);`
  - 相当于镜像左子树，再与右子树比较
- 两个栈，左树栈左节点先进栈，右树右节点先进栈

#### [剑指 Offer 32 - I. 从上到下打印二叉树](https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-lcof/)

- BFS 层序遍历 用队列存当前层节点

#### [剑指 Offer 32 - II. 从上到下打印二叉树 II](https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-ii-lcof/)

- BFS 用队列存储当前层节点 
- 每次记录该层节点数量len，队列前len个节点出队，组成数组，加入res

#### [剑指 Offer 32 - III. 从上到下打印二叉树 III](https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-iii-lcof/)

- BFS +双端队列
  - 需要一个标志符判断奇数行or偶数行
  - 奇数行 队尾进 队头出
  - 偶数行 队头进 队尾出
- DFS + 二维数组
  - 记录当前遍历的层级，将元素插入对应层级
  - 偶数行：新元素要从数组0这个位置插入，奇数行：直接插入数组尾部

#### [剑指 Offer 34. 二叉树中和为某一值的路径](https://leetcode-cn.com/problems/er-cha-shu-zhong-he-wei-mou-yi-zhi-de-lu-jing-lcof/)

- DFS 先序遍历 + 全局变量
  - Sum-=val
  - 一个二维数组全局变量储存结果
  - 一个一维数组经先序遍历，添加每条路径上的节点，直到遇到叶节点，判断sum是否等于0
  - 一维数组记得执行完每层dfs需要弹出当前遍历添加的节点

#### [剑指 Offer 37. 序列化二叉树](https://leetcode-cn.com/problems/xu-lie-hua-er-cha-shu-lcof/)

- 自规定序列化格式 使用c++ isstringstram流 只用空格隔开字符
- 序列化：
  - DFS+队列
  - 注意为空指针时插入"null"
  - 每个字符后加 空格
  - 最后输出裁掉最后一个字符
- 反序列化 
  - 使用c++ isstringstram流 可以按空格分割string 返回输出流 `istringstream input(data); `
  - 将分割的数组 存入 一个存放树指针的数组 `while(input>>val){ }`
  - 双指针，i 指向本轮要加子节点的节点，j 指向添加的子节点，每轮 j+2 i+1，i 遇到 null 节点跳过

#### [剑指 Offer 54. 二叉搜索树的第k大节点](https://leetcode-cn.com/problems/er-cha-sou-suo-shu-de-di-kda-jie-dian-lcof/)

- 中序遍历倒序，二叉搜索树中序遍历倒序是降序

  ```c++
  dfs(root->right);
  cout<<root->val;
  dfs(root->left);
  ```

- 维护一个全局k，和一个全局的res，每找到一个最右的元素k--，k=0时 给res赋值

- c++中 k可以取引用，反之只是作为局部变量递归，递归之后不会影响原函数的k

#### [剑指 Offer 55 - I. 二叉树的深度](https://leetcode-cn.com/problems/er-cha-shu-de-shen-du-lcof/)

- 后序遍历（即DFS）
  - 维护一个全局res，找到叶子节点，维护最大值
- 层序遍历 BFS
  - 队列空的时候，返回深度

#### [剑指 Offer 55 - II. 平衡二叉树](https://leetcode-cn.com/problems/ping-heng-er-cha-shu-lcof/)

- 深度遍历DFS，比较深度，深度大于1的时候 全局变量res=false，递归返回子树最大深度

#### [剑指 Offer 68 - I. 二叉搜索树的最近公共祖先](https://leetcode-cn.com/problems/er-cha-sou-suo-shu-de-zui-jin-gong-gong-zu-xian-lcof/)

- 找到分叉点：分叉点为本身 or min<分叉点<max
  - 当前节点 > max，寻找左子树
  - 当前节点 < min，寻找右子树
- 迭代 or 递归 查找

#### [剑指 Offer 68 - II. 二叉树的最近公共祖先](https://leetcode-cn.com/problems/er-cha-shu-de-zui-jin-gong-gong-zu-xian-lcof/)

- DFS 递归遍历
  - 寻找含该节点的路径，一旦找到该路径返回true
- 设置全局变量 res
  - 一旦两个节点都找到，更新 res

#### [129. 求根到叶子节点数字之和](https://leetcode-cn.com/problems/sum-root-to-leaf-numbers/)

#深度、广度

#广度设置两个队列，一个存节点，一个存节点对应的值，遇到叶子节点开始相加

```c++
class Solution {
public:
   
    int dfs(int sum, TreeNode* root){
        if(root==nullptr) return 0; //非叶子节点
        sum = sum*10+root->val; //进位+本节点
        if(root->left==nullptr && root->right==nullptr) return sum; //叶子节点
        return dfs(sum,root->left) + dfs(sum,root->right);    //深度优先
    }
    int sumNumbers(TreeNode* root) {
        return dfs(0,root);
    }

};
```

#### [剑指 Offer 12. 矩阵中的路径](https://leetcode-cn.com/problems/ju-zhen-zhong-de-lu-jing-lcof/)

- DFS 递归 + 剪枝 + 回溯
- 不需要重新设置一个相同大小的数组判断是否经过该该点，直接在原数组上操作，如果该条路径DFS失败，需要回溯

```c++
bool exist(vector<vector<char>>& board, string word) {
    if(board.empty()) return false;
    int m = board.size(), n = board[0].size();
    for(int i = 0; i < m; i++){
        for(int j = 0; j < n; j++){
            if(startDFS(board,i,j,word,0)) return true;                          
        }
    }
    return false;
}
bool startDFS(vector<vector<char>>& board, int i, int j, string word, int v){
    if(v==word.length()) return true;
    if(i < 0 || j < 0 || i >= board.size() || j >= board[0].size()) return false;
    else if(board[i][j] == word[v]){
        board[i][j] = '*';
        if(startDFS(board, i-1,j,word,v+1) || 
        startDFS(board, i+1,j,word,v+1) || 
        startDFS(board, i,j-1,word,v+1) || 
        startDFS(board, i,j+1,word,v+1)) return true;
        //回溯
        board[i][j] = word[v];
    }
    return false; 
}
```



## 动态规划：

#### [剑指 Offer 14- I. 剪绳子](https://leetcode-cn.com/problems/jian-sheng-zi-lcof/)

- dp[1] = 1, dp[2] = 2, dp[3] =3
- 法一：每个 $dp[n] = max( dp[n-1]*dp[1] , dp[n-2]*dp[2], ..., dp[n-n/2]*dp[n/2],...,dp[1]*dp[n-1])$ n/2之后可省略
- 法二：先验知识：dp[n] 以1 ，2，3，进行拆分，可得最大
  - $dp[n] = max(dp[n-1]*1, max(dp[n-2]*2),max(dp[n-3]*3))$

#### [剑指 Offer 14- II. 剪绳子 II](https://leetcode-cn.com/problems/jian-sheng-zi-ii-lcof/)

- n是3的倍数 - n全由3组成
- n%3 = 1 - n由4+(n-4)/3个3组成
- n%3 = 2 - n由2+(n-2)/3个3组成
- 总结 n-=3  res * =3  当n<=4时  res * =n

#### [剑指 Offer 42. 连续子数组的最大和](https://leetcode-cn.com/problems/lian-xu-zi-shu-zu-de-zui-da-he-lcof/)

- dp[i] 表示 以 i 结尾的序列的最大和，两种情况：连着之前的i-1 or 从i开始新的子序列
  - $dp[0] = nums[0]$
  -  $dp[i] = max(dp[i-1]+nums[i],nums[i])$
  - $res =max(res,dp[i])$

#### [剑指 Offer 47. 礼物的最大价值](https://leetcode-cn.com/problems/li-wu-de-zui-da-jie-zhi-lcof/)

- dp[i,j] 表示从矩阵左上角出发 ，达到 (i,j) 点时的最大总和
- dp.size = (i+1. j+1)
- 初始值：$dp[-1,j] = 0, dp[i,-1] = 0$ 第一行第一列为0
- $dp[i,j] = max(dp[i-1,j],dp[i,j-1]) + nums[i,j]$
- 进阶：只用一维dp数组 `dp(nums[0].size()+1),dp[0] = 0`

#### [剑指 Offer 63. 股票的最大利润](https://leetcode-cn.com/problems/gu-piao-de-zui-da-li-run-lcof/)

- 智能买卖一次
- dp[i] 表示第i天卖出得到利润
- 维护一个最小值 val，寻找最大差值
- $dp[i] = nums[i]-val$
- $val = min(val,nums[i])$
- $res = max(res,dp[i])$
- 初始：$dp[0] = 0, val = numsp[0]$

#### [1024. 视频拼接](https://leetcode-cn.com/problems/video-stitching/)

#动态规划 #贪心算法

```c++
class Solution {
public:
    int videoStitching(vector<vector<int>>& clips, int T) {
        //dp[i] = min(dp[i],dp[cl[0]]+1) 表示时长为i时 所需最小片段数
        //对于每个i 都要遍历所有clips 找到包含该i的片段 则如果需要包含该片段的片段总数=dp[片段左端点]+1
        //o(N*T) | o(T)
        //初始化 dp[0]=0 dp[…]=INT_MAX-1
        vector<int> dp(T+1,INT_MAX-1); //INT_MAX:[[0,2],[4,5]]运行到i=5时 dp[5] = min(dp[5],dp[4]+1) = min(INT_MAX,INT_MAX+1)溢出
        dp[0] = 0;
        for(int i=1;i<=T;i++){
            for(auto& cl:clips){
                if(cl[0]<i && cl[1]>=i){ //只包括右端顶点
                    dp[i] = min(dp[i],dp[cl[0]]+1);
                }
            }
        }
        return dp[T]==INT_MAX-1? -1: dp[T];
    }
};
```

## 贪心算法：

[1024. 视频拼接](https://leetcode-cn.com/problems/video-stitching/)

#动态规划 #贪心算法

```c++
class Solution {
public:
    int videoStitching(vector<vector<int>>& clips, int T) {
        vector<int> maxclips(T);
        for(auto& cl:clips){
            if(cl[0]<T){
                maxclips[cl[0]] = max(maxclips[cl[0]],cl[1]); //记录该左端点能达到的最大右端点
            }
        }
        int res = 0;
        int cur = 0, curmax = 0; 
        //cur：当前i所在片段的最右端点 
        //curmax：包含当前i的片段所能达到的最大右端点 即下一个遍历的片段
        //最开始片段为[0,0]
        for(int i=0;i<T;i++){
            curmax = max(curmax,maxclips[i]); 
            if(i==curmax) return -1; //i已经抵达能达到的最大右端点 但没到T 片段没有全覆盖
            if(i==cur){ //i达到当前片段的最右 该片段运行完 需要转向下一个片段
                cur = curmax; //pre指向 当前i的片段所能达到的最大右端点=curmax
                res++; //res更新
            }
        }
        return res;
        // o(n+T) | o(T)
    }
};
```



## 排序

| 冒泡排序 | O(n2)     |
| -------- | --------- |
| 选择排序 | O(n2)     |
| 插入排序 | O(n2)     |
| 希尔排序 | O(n1.5)   |
| 快速排序 | O(N*logN) |
| 归并排序 | O(N*logN) |
| 堆排序   | O(N*logN) |
| 基数排序 | O(d(n+r)) |

### 快排模版

```c++
//返回j
//arr[j]左侧的均小于arr[j] arr[j]右侧的均大于arr[j]
int patition(vector<int>& arr, int lo, int hi){
      //每轮基于左节点进行快排，将小于左节点排在左边，大于左节点的排在右边
      int v = arr[lo];  //v等于左节点
      int i = lo;
      int j = hi+1;
      while(true){
          while(++i<=hi && arr[i]<v);  //从左找起 找到第一个大于v的 arr[i]
          while(--j>=lo && arr[j]>v);  //从右找起 找到第一个小于v的 arr[j]
          if(i>j) break;  //已经在正确位置：arr[i]>v；在右侧 arr[j]<v 在左侧
          //if(i>=j) break;
          //交换 arr[i] arr[j]
          int tmp = arr[i];
          arr[i] = arr[j];
          arr[j] = tmp;
      }
      //左节点v 与 arr[j] 交换：arr[j]<v，arr[j]一定在左节点左侧
      arr[lo] = arr[j];
      arr[j] = v;
      return j;
  }

quickSort(nums,lo,j-1);
quickSort(nums,j+1,hi);
```

### **归并排序**：两个有序数组 合并成 一个有序数组

- 有两个<u>升序</u>数组a、b，建立一个长度为a+b的数组 tmp

- 三个指针，l 指向 a 的开头，r 指向 b 的开头，index 指向 tmp 的开头

  ```c++
  //循环结束 l or r 指针达到边界
  while(l<a.size() && r<b.size()){
  	if(a[l]>b[r]){
  		tmp[index] = b[r];
  		index++;
  		r++;
  	}else{
  		tmp[index] = a[l];
  		index++;
  		l++;
  	}
  }
  //即 r 达到边界，则a中剩下的数都比b的最大值大
  while(l<a.size()){
  	tmp[index] = a[l];
  	index++;
  	l++;
  }
  //即 l 达到边界，则b中剩下的数都比a的最大值大
  while(r<b.size()){
  	tmp[index] = b[r];
  	index++;
  	r++;
  }
  
  return tmp;//tmp即是排序后的数组
  ```
  

### 自定义排序规则

#### [剑指 Offer 45. 把数组排成最小的数](https://leetcode-cn.com/problems/ba-shu-zu-pai-cheng-zui-xiao-de-shu-lcof/)

- x+y<y+x -> x<y 从小到大排，再拼接
- 快排 or sort 都需要自定义规则
- 使用sort自定义排序规则，需使用静态函数
- 先将int数组转为string数组，to_strring方法，避免每次比较的时候都要转
- o(N logN)

```c++
void quickSort(vector<string>& nums, int lo, int hi){
    if(hi<=lo) return;
    string v = nums[lo];
    int i = lo;
    int j = hi+1;
    while(true){
        while(++i<=hi && compare(nums[i],v)); //找到 nums[i]>v
        while(--j>=lo && compare(v,nums[j])); //找到 v>nums[j]
        if(i>=j) break;
        string tmp = nums[i];
        nums[i] = nums[j];
        nums[j] = tmp;
    }   
    nums[lo] = nums[j];
    nums[j] = v;
    quickSort(nums,lo,j-1);
    quickSort(nums,j+1,hi);
}

static bool compare(const string &x, const string &y){
    return x+y<y+x; //x<y
}


string minNumber(vector<int>& nums) {
    vector<string> str;
    for(auto n:nums){
        str.push_back(to_string(n));
    }
    //自定义排序规则
    //x+y>y+x -> x>y
    //按大小顺序拼接 得到结果

    quickSort(str,0,str.size()-1);
    //sort(str.begin(),str.end(),compare);

    string res;
    for(auto s : str){
        res += s;
    }
    return res;

}
```





## 背包问题-NP

- 0-1背包问题

  n个物品，每种物品只有一件，价值w[i]，大小为c[i]，选择放或者不放（0/1），求一个容量v的背包能放下的最大总价值

  F[i,v] - 前i件物品，放入容量为v的背包，获得的最大总价值

  - 不放第 i 件物品：F[i,v] = F[i-1,v]
  - 放第 i 件物品：F[i,v] = F[i-1,v-c[i]] + w[i]  //等价于容量为v-c[i]的背包，放前i-1个物品的最大价值 + 第i件物品的价值
  - 即	$F[i,v] = max\{F[i-1,v],F[i-1,v-c[i]]+w[i]\}$

  时间复杂度$o(vn)$ 

  空间复杂度$o(vn)$可优化至$o(v)$

  [416. 分割等和子集](https://leetcode-cn.com/problems/partition-equal-subset-sum/)

  

- 完全背包问题

  n个物品，每个物品有无数件，价值w[i]，大小为c[i]，求一个容量v的背包能放下的最大总价值 

  F[i,v] - 前i件物品，放入一个容量为v的背包，获得的最大总价值

  - k表示第i件物品放入个数
  - k=0表示第i件物品不放入
  - 即    $F[i,v] = max\{F[i-1,v-kc[i]]+kw[i]\}$  

  时间复杂度 $o(vn * \sum v/c[i])$   - v/c[i] 表示每轮求F[i,v]的时候，需要遍历的k的个数

## TOP K 问题

#### [剑指 Offer 40. 最小的k个数](https://leetcode-cn.com/problems/zui-xiao-de-kge-shu-lcof/)

- sort 排序

  ```c++
  sort(arr.begin(),arr.end());
  return vector<int>(arr.begin(), arr.begin()+k);
  ```

- 优先队列 - 大顶堆 时间复杂度 o(NlogK)，如果用小顶堆 时间复杂度 o(NlogN)

  ```c++
  //将arr的前k个值放入优先队列（默认为大顶堆）
  //比较 arr[k+1:arr.size()-1] 的每个值 与 队首元素大小（最大值）
  //比队列中最大值大的话：队首出队，将新元素入队
  //反之不处理 继续遍历
  vector<int> getLeastNumbers(vector<int>& arr, int k) {
      vector<int>vec(k, 0);
      if (k == 0) { // 排除 0 的情况
          return vec;
      }
      priority_queue<int> Q;
      for (int i = 0; i < k; ++i) {
          Q.push(arr[i]);
      }
      for (int i = k; i < (int)arr.size(); ++i) {
          if (Q.top() > arr[i]) {
              Q.pop();
              Q.push(arr[i]);
          }
      }
      for (int i = 0; i < k; ++i) {
          vec[i] = Q.top();
          Q.pop();
      }
      return vec;
  }
  ```

- 快速排序 - 找到第k大的元素 返回其左侧数组

  时间复杂度：o(N) = N + N/2 + …… + N/N = 2N

  ```c++ 
  // vector<int> quickSearch(vector<int>& arr, int lo, int hi, int k)
  // 从 lo = 0, hi = arr.size()-1 开始排序
  // int patition(vector<int>& arr, int lo, int hi)
  // 每次找到 左节点arr[lo] 对应的位置j 使arr[j]左侧元素都小于左节点 arr[j]右侧元素都大于左节点 返回j
  // j = k 则找到了第K大的元素
  // 反之 j>k? quickSearch(arr,lo,goal-1,k) : quickSearch(arr,goal+1,hi,k); 继续递归单侧数组
  
  vector<int> quickSearch(vector<int>& arr, int lo, int hi, int k){
      int goal = patition(arr, lo, hi);
      //找到第K大的元素，且经过快排，i<k 均 arr[i]<arr[k]
      vector<int> res;
      if(goal == k){
          for(int i=0; i<k; i++){
              res.push_back(arr[i]);
          }
          return res;           
      }
      return goal>k? quickSearch(arr,lo,goal-1,k) : quickSearch(arr,goal+1,hi,k);
  }
  
  int patition(vector<int>& arr, int lo, int hi){
      //每轮基于左节点进行快排，将小于左节点排在左边，大于左节点的排在右边
      int v = arr[lo];  //v等于左节点
      int i = lo;
      int j = hi+1;
      while(true){
          while(++i<=hi && arr[i]<v);  //从左找起 找到第一个大于v的 arr[i]
          while(--j>=lo && arr[j]>v);  //从右找起 找到第一个小于v的 arr[j]
          if(i>j) break;  //已经在正确位置：arr[i]>v；在右侧 arr[j]<v 在左侧
          //交换 arr[i] arr[j]
          int tmp = arr[i];
          arr[i] = arr[j];
          arr[j] = tmp;
      }
      //左节点v 与 arr[j] 交换：arr[j]<v，arr[j]一定在左节点左侧
      arr[lo] = arr[j];
      arr[j] = v;
      return j;
  }
  
  vector<int> getLeastNumbers(vector<int>& arr, int k) {
      if(arr.size()==0) return vector<int> {};  //边界情况
      if(arr.size()==k) return arr;
      return quickSearch(arr, 0, arr.size()-1, k);
  
  }
  
  ```

#### [剑指 Offer 41. 数据流中的中位数](https://leetcode-cn.com/problems/shu-ju-liu-zhong-de-zhong-wei-shu-lcof/) 大顶堆+小顶堆

- 分为大顶堆A 和 小顶堆B，大顶堆A存[5 4 3 2 1]，小顶堆B存[6,7,8,9,10]，小顶堆最小值永远大于大顶堆最大值
- A.size() = B.size() / B.size()+1
- 插入元素
  - A B长度相等时，元素始终插到大根堆A中：先将元素插入B，取B中最小值，再放入A，保证B中最小的元素>A
  - A B长度不等时，A.size始终大1，元素插到B中：先将元素插入A，取A最大值，放入B，保证A中最大值<B
  - 时间复杂度 o(logN) - 堆的插入和弹出操作耗时
- 返回中位数
  - A B长度相等时，返回两个顶堆堆顶均值
  - A B长度不等时，A.size始终大1，返回大顶堆A的堆顶值，即为中位数

```c++
  priority_queue<int> qMax; //大顶堆
  priority_queue<int, vector<int>, greater<int>> qMin; //小顶堆
  MedianFinder() {
  }

  void addNum(int num) {
      //大顶堆size始终>=小顶堆size
      if(qMax.size()==qMin.size()){
          qMin.push(num); 
          qMax.push(qMin.top()); //取小顶堆最小值
          qMin.pop();
      }else{
          qMax.push(num);
          qMin.push(qMax.top());  //取大顶堆最大值
          qMax.pop();
      }
  }

  double findMedian() {
      if(qMax.size()==qMin.size()){
          return (qMax.top() + qMin.top())/2.0;
      }else{
          return qMax.top();
      }
  }
```



## 位运算

| 位运算 | 操作                                                     |
| ------ | -------------------------------------------------------- |
| & 与   | 均为1 = 1                                                |
| \| 或  | 有一个1 = 1                                              |
| ^ 异或 | 不同返回1：0 ^ 1 = 1                                     |
| <<左移 | 右边补0，                                                |
| >>右移 | 相当于 x/=2                                              |
| 反码   | 正数的反码与其原码相同；负数的反码是符号位不变，其他取反 |
| 补码   | 正数的补码与其原码相同；负数的补码是在其反码的末位加     |

#### [剑指 Offer 15. 二进制中1的个数](https://leetcode-cn.com/problems/er-jin-zhi-zhong-1de-ge-shu-lcof/)

- 法1: x & 1 == 1 说明x最后一位是1 -> 不断右移遍历，看最后一位是否为1 o(N)
- 法2: x = x&(x-1) 可以消去x最后一个1 -> 判断能消去几次到0 o(M) M为1个数

```c++
//与1& 右移
int res = 0;
while(n){
    if(n&1) res++;  
    n = n>>1;  //相当于 n/=2
}
return res;
//------------------------
//n&(n-1) 能把n中最后一个1变为0
while(n){   
    n = n&(n-1);
    res++;
}
return res;
```



# 力扣

#### [24. 两两交换链表中的节点](https://leetcode-cn.com/problems/swap-nodes-in-pairs/)

#链表

```c++
//递归
class Solution {
public:
    ListNode* swapPairs(ListNode* head) {
        if(head==nullptr || head->next==nullptr) return head;
        ListNode* newhead = head->next;
        head->next = swapPairs(newhead->next);
        newhead->next = head;
        return newhead;
    }
};
```

```c++
//迭代
class Solution {
public:
    ListNode* swapPairs(ListNode* head) {
        ListNode* a = head;
        ListNode* b;
        ListNode* z = nullptr;
        if(head==nullptr || head->next==nullptr) return head;
        b = a->next;
        head = b;
        while(b!=nullptr&&a!=nullptr){
            if(z!=nullptr) z->next = b;
            ListNode* temp = b->next;
            b->next = a;
            a->next = temp;
            z = a;

            a = temp;
            if(a==nullptr) break; 
            else b = temp->next;
        }
        return head;
    }
};
```

#### [19. 删除链表的倒数第N个节点](https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/)

#链表 #双指针

```c++
//遍历两遍 
/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    ListNode* removeNthFromEnd(ListNode* head, int n) {
        int len=0;
        ListNode* tmp = head;
        //获得链表长度
        while(tmp!=nullptr){
            len++;
            tmp = tmp->next;
        }
        n = len - n - 1 ; //找到要删除的节点的前驱节点
        if(n<0) return head->next;
        int i = 0;
        tmp = head;
        while(i<n){
            i++;
            tmp=tmp->next;
        }
        tmp->next = tmp->next->next;
        return head;
    }
};
```

```c++
//遍历一遍 双指针 
class Solution {
public:
    ListNode* removeNthFromEnd(ListNode* head, int n) {
        ListNode* first = new ListNode(0,head); //起始为空指针 next指向head
        ListNode* second = head;
        int i = 1;
        while(i<n){
            second = second->next; //使 second 和 first 之间相差 n
            i++;
        }
        //同时移动second first到末尾
        while(second->next!=nullptr){
            first = first->next;
            second = second->next;
        }
        if(first->next==head) return head->next; //first->next==head 表明删除的为第一个节点
        first->next = first->next->next;
        return head;
    }
};
```



#### [1002. 查找常用字符](https://leetcode-cn.com/problems/find-common-characters/)

#数组

```c++
class Solution {
public:
    vector<string> commonChars(vector<string>& A) {
        if(A.size()==0) return A;
        vector<int> nums(26,INT_MAX); //长度为26的一维数组 用于记录每个字母至少出现的次数
        vector<int> tmp(26);
        for(string str:A){
            fill(tmp.begin(),tmp.end(),0);
            for(char ch:str){
                tmp[ch-'a']++;  //当前字符串中 26个字母出现的次数
            }
            for(int i=0;i<26;i++){
                nums[i] = min(tmp[i],nums[i]); //更新记录数组
            }
        }
        vector<string> res;//根据每个字母 的出现次数 加入res
        for(int i=0;i<26;i++){ 
            for(int j=0;j<nums[i];j++){
                res.emplace_back(1,'a'+i); 
            }
        }
        return res;
    }
};
```



#### [35. 搜索插入位置](https://leetcode-cn.com/problems/search-insert-position/)

#数组 #二分

```c++
// class Solution {
// public:
//     int searchInsert(vector<int>& nums, int target) {
//         //找到比它大1的数
//         for(int i=0;i<nums.size();i++){
//             if(nums[i]>=target) return i;
//         }
//         return nums.size();
//     }
// };

//二分法
class Solution{
public:
    int searchInsert(vector<int>& nums, int target){
        int left = 0;
        int right = nums.size()-1;
        //找到比它大的第一个数
        while(left<=right){
            int mid = (left+right)/2;
            if(nums[mid]<target) left = mid+1; //left最终指向tar ot 第一个比tar大的数
            else{
                right = mid-1;
            }

        }
        return left;
    }
};
```



#### [242. 有效的字母异位词](https://leetcode-cn.com/problems/valid-anagram/)

#字符串 #哈希表

```c++
class Solution {
public:
    bool isAnagram(string s, string t) {
        int num[26] = {0};//存储26个字母的数量
        if(s.length()!=t.length()) return false;
        for(int i=0;i<s.length();i++){
            num[s[i]-'a']++;
            num[t[i]-'a']--;
        }
        for(int i=0;i<26;i++){
            if(num[i]!=0) return false;
        }
        return true;
    }
};
```

```c++
#include <map>
class Solution {
public:
    bool isAnagram(string s, string t) {
        if(s.size()!=t.size()) return false;
        //哈希表
        unordered_map<char,int> map;
        for(int i=0;i<s.size();i++){
            map[s[i]]++;
            map[t[i]]--;
        }
        for(unordered_map<char,int>::iterator it = map.begin();it != map.end();it++){
            if(it->second!=0) return false;
        }
        return true;
    }
};

```

#### [344. 反转字符串](https://leetcode-cn.com/problems/reverse-string/)

#双指针 #字符串

```c++
class Solution {
public:
    void reverseString(vector<char>& s) {
        //双指针
        for(int i=0,j=s.size()-1;i<s.size()/2;i++,j--){
            swap(s[i],s[j]);
        }
    };
};
```

#### [27. 移除元素](https://leetcode-cn.com/problems/remove-element/)

#双指针 #字符串

```c++
class Solution {
public:
    int removeElement(vector<int>& nums, int val) {
        int i=0;
        for(int j=0;j<nums.size();j++){
            if(nums[j]!=val){
                swap(nums[i],nums[j]);
                i++;
            }
        }
        return i;
    }
};
```

#### [232. 用栈实现队列](https://leetcode-cn.com/problems/implement-queue-using-stacks/)

#栈 #队列

```c++
class MyQueue {
public:
    stack<int> s1; 
    stack<int> s2;
    /** Initialize your data structure here. */
    MyQueue() {

    }
    
    /** Push element x to the back of queue. */
    void push(int x) {
        s1.push(x);
    }
    
    /** Removes the element from in front of queue and returns that element. */
    int pop() {
        if(s2.empty()){
            while(!s1.empty()){
                int tmp = s1.top();
                s1.pop();
                s2.push(tmp);
            }
        }
        int res = s2.top();
        s2.pop();
        return res;

    }
    
    /** Get the front element. */
    int peek() {
        if(!s2.empty()) return s2.top();
        while(!s1.empty()){
            int tmp = s1.top();
            s1.pop();
            s2.push(tmp);
        }
        return s2.top();
    }
    
    /** Returns whether the queue is empty. */
    bool empty() {
        return s1.empty()&&s2.empty();

    }
};

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue* obj = new MyQueue();
 * obj->push(x);
 * int param_2 = obj->pop();
 * int param_3 = obj->peek();
 * bool param_4 = obj->empty();
 */
```

#### [144. 二叉树的前序遍历](https://leetcode-cn.com/problems/binary-tree-preorder-traversal/)

#二叉树 #数组 #栈

- 递归：

  ```c++
  class Solution {
  public:
      vector<int> res;
      vector<int> preorderTraversal(TreeNode* root) {
          dfs(root);
          return res;
      };
  
      void dfs(TreeNode* root) {
          if(root==nullptr) return;
          //中序 后序 直接更改这里的顺序
          res.push_back(root->val);
          dfs(root->left);
          dfs(root->right);
      }
  
  };
  ```

- 迭代：设置一个栈存储树节点指针，每次弹出一个指针，非空则将指针指向的val存进数组，然后右指针进栈、左指针进栈（栈是先进后出，先进的右指针会等左指针遍历完再出栈）

  ```c++
  class Solution {
  public:
      vector<int> preorderTraversal(TreeNode* root) {
          vector<int> res;
          stack<TreeNode*> s; //用栈存储先序遍历
          s.push(root);
          while(!s.empty()){
              TreeNode* tmp = s.top();
              s.pop();
              //非空
              if(tmp!=nullptr){
                  cout<<tmp->val;
                  res.push_back(tmp->val);
                  //后续遍历时 1 2 换位，按中右左输出，最后反转为左右中
                  s.push(tmp->right);  //1
                  s.push(tmp->left);   //2                   
              }
          }
          return res;
      }
  };
  ```

  

#### [94. 二叉树的中序遍历](https://leetcode-cn.com/problems/binary-tree-inorder-traversal/)

- 迭代：建立栈存储树节点

  - 先所有左节点进栈
  - 指针遍历到空时(左)，开始出栈(中)，最左节点先出栈，推入结果数组，最左节点的右节点进栈(右)
  - 返回第一步

  ```c++
  class Solution {
  public:
      vector<int> inorderTraversal(TreeNode* root) {
          vector<int> res;
          stack<TreeNode*> s;
          TreeNode* tmp = root;
          while(tmp!=NULL || !s.empty()){
              if(tmp!=nullptr){
                  s.push(tmp);
                  tmp = tmp->left; //左
              }else{
                  TreeNode* cur = s.top(); //中
                  s.pop();
                  res.push_back(cur->val);
                  tmp = cur->right; //右
              }
          } 
      };
  
  };
  ```

#### [145. 二叉树的后序遍历](https://leetcode-cn.com/problems/binary-tree-postorder-traversal/)

- 迭代：参考先序遍历 先序遍历中左右->中右左->反转结果

  ```c++
  class Solution {
  public:
      vector<int> postorderTraversal(TreeNode* root) {
          vector<int> res;
          if(root==nullptr) return res;
          stack<TreeNode*> s;
          s.push(root);  
          while(!s.empty()){
              TreeNode* tmp = s.top();
              s.pop();
              //非空
              if(tmp!=nullptr){
                  res.push_back(tmp->val);
                  s.push(tmp->left); // 2 与先序遍历相反 
                  s.push(tmp->right); //1
              }
          }
          reverse(res.begin(), res.end()); // 将结果反转之后就是左右中的顺序了
          return res;
  
      }
  };
  ```

#### [102. 二叉树的层序遍历](https://leetcode-cn.com/problems/binary-tree-level-order-traversal/)

#二叉树 #层序遍历 #队列

```c++
class Solution {
public:
    vector<vector<int>> levelOrder(TreeNode* root) {
        vector<vector<int>> res;
        if(root==nullptr) return res;
        queue<TreeNode*> s; //队列
        s.push(root);
        while(!s.empty()){
            vector<int> cur;
            int len = s.size();
            for(int i = 0;i<len;i++){
                TreeNode* tmp = s.front();
                s.pop();
                cur.push_back(tmp->val); 
                if(tmp->left!=nullptr) s.push(tmp->left);
                if(tmp->right!=nullptr) s.push(tmp->right);            
            }
            res.push_back(cur);
        }

        return res;
    }
};
```

#### [116. 填充每个节点的下一个右侧节点指针](https://leetcode-cn.com/problems/populating-next-right-pointers-in-each-node/)

#层序遍历 #队列 #递归

```c++
/*
// Definition for a Node.
class Node {
public:
    int val;
    Node* left;
    Node* right;
    Node* next;

    Node() : val(0), left(NULL), right(NULL), next(NULL) {}

    Node(int _val) : val(_val), left(NULL), right(NULL), next(NULL) {}

    Node(int _val, Node* _left, Node* _right, Node* _next)
        : val(_val), left(_left), right(_right), next(_next) {}
};
*/

class Solution {
public:
    Node* connect(Node* root) {
        if(root==nullptr) return root;
        queue<Node*> que; //队列 存储当前层节点
        que.push(root);
        while(!que.empty()){
            int len = que.size(); //子节点会不断进队列 要固定当前层的节点的长度
            for(int i=0;i<len;i++){
                Node* last = que.front();
                que.pop();
                if(last->left!=nullptr){ //完全二叉树 子节点不为空 则进队列
                    que.push(last->left); 
                    que.push(last->right);
                }
                if(i!=len-1){
                    Node* cur = que.front(); //非该层最后一个节点
                    last->next = cur;
                }else{
                    last->next = nullptr;  //该层最后一个节点
                }
            }
        }
        return root;
    }
};
```

```c++
//使用递归 算做常数空间
class Solution {
public:
    Node* connect(Node* root) {
        if(root==nullptr) return root;
        //存在子节点
        if(root->left!=nullptr) {
            root->left->next = root->right; //左节点的next一定等于右节点
            //父节点next存在 右节点的next一定存在 等于父->next->left
            if(root->next!=nullptr) root->right->next = root->next->left; 
            //递归
            connect(root->left);  //root->left = connect(root->left);
            connect(root->right);  //root->right = connect(root->right);
        }
        return root;
    }
};
```



#### [530. 二叉搜索树的最小绝对差](https://leetcode-cn.com/problems/minimum-absolute-difference-in-bst/)

#中序遍历 #二叉搜索树

```c++
class Solution {
public:
    int getMinimumDifference(TreeNode* root) {
        // vector<int> nums;
        stack<TreeNode*> s;
        TreeNode* temp = root;
        int res = INT_MAX;
        int min = -1;
        //二叉搜索树 中序遍历为升序
        while(temp!=nullptr || !s.empty()){
            if(temp!=nullptr){
                s.push(temp);
                temp=temp->left;
            }else{
                TreeNode* cur = s.top();
                s.pop();
                // nums.push_back(cur->val);
                if(min==-1){
                    min = cur->val;
                }else{
                    if(res>abs(cur->val-min)) res = abs(cur->val-min);
                    min = cur->val;
                }
                temp = cur->right;
            }
        }
        
        return res;
    }
};
```



#### [剑指 Offer 51. 数组中的逆序对](https://leetcode-cn.com/problems/shu-zu-zhong-de-ni-xu-dui-lcof/)

#归并 #数组 

//归并过程中加入计数

```c++
class Solution {
public:
    long res = 0;
    int temp[50010];
    void mergeSum(vector<int>& nums,int left, int right){
        if(left>=right) return;
        int mid = left+(right-left)/2;

        mergeSum(nums,left,mid);
        mergeSum(nums,mid+1,right);

        int index = 0;
        int l = left, r = mid+1;

        while(l<=mid && r<=right){
            if(nums[l]>nums[r]){
                //res = res + left数组中剩下的数的个数 + nums[l] 本身
                res += mid - l + 1; //left数组中剩下的数都比nums[r]大
                temp[index++] = nums[r++];
            }else{
                temp[index++] = nums[l++];
            }
        }

        while(l<=mid) temp[index++] = nums[l++];
        while(r<=right) temp[index++] = nums[r++];
        for(int i = left, j = 0; i <= right; i++, j++) nums[i] = temp[j];
    }

    int reversePairs(vector<int>& nums) {
        mergeSum(nums,0,nums.size()-1);
        return res;
    }
};
```



#### [416. 分割等和子集](https://leetcode-cn.com/problems/partition-equal-subset-sum/)

#背包问题 #dp

```c++
class Solution {
public:
    bool canPartition(vector<int>& nums) {
        int len = nums.size();
        if(len<=1) return false;

        int sum = accumulate(nums.begin(),nums.end(),0); //累加
        if(sum%2==1) return false; //和为偶数 false
        sum = sum/2;  //寻找序列中是否有某几个数相加为sums的一半

        int maxNum = *max_element(nums.begin(), nums.end());
        if(maxNum>sum) return false;

        vector<vector<int>> dp(len, vector<int>(sum + 1, 0)); //size:[len][sum+1]
        for(int i=0;i<len;i++){
            dp[i][0]=true;
        }
        for(int i=1;i<len;i++){
            for(int j=1;j<sum+1;j++){
                if(j>=nums[i]) dp[i][j] = dp[i-1][j]|dp[i-1][j-nums[i]];
                else dp[i][j] = dp[i-1][j];

            }
        }
        return dp[len-1][sum];


    }
};
```

