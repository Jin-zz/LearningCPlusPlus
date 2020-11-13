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

### String：

```c++
string ret; //进出方式 类似栈
ret.push_back('*');//末尾进数组
ret.pop_back();//末尾出数组
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
z
//插入元素
vec1.push_back(1); //末尾插入
vec1.emplace_back();
//访问数组
vec1.front(); //第一个元素
vec1.back()  ; //最后一个元素 
vec.size(); //数组长度

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

定义一个map：

```c++
#include <map>
map<int, string> stu; //<K,V>


//长度
int len = stu.size();

//插入元素：
stu.insert(stu<int, string>(2, "name")); 

//查找
Sting res = stu[2]; //key
//迭代器查找
map<int, string>::iterator iter;
iter = mapStudent.find(1);
if(iter != mapStudent.end()){
    //查找到了
}
 
//删除
int n = stu.erase(2); 
//迭代器删除
iter = stu.find(2);
cout<< iter->second;
stu.erase(iter);

//清空
stu.clear();

//遍历
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



## 数据结构

### **栈**

头文件：`#include <stack>`

定义：`stack<int> s;`

进栈：`s.push(x);`

出栈：`s.pop()`; //没有返回值

取栈顶：`val = s.top();`

栈空：`s.empty();`

长度：`s.size();`

### 队列

头文件：`#include <queue>`

定义：`queue<int> q;`

进队尾：`	q.push(i);`

出队首：`q.pop();` //无返回

取队首：`q.front();`

队列空：`q.empty();`

长度：`q.size();`

- 双端队列

  头文件：`#include <deque>`

  定义：`deque<int> d;`

  进队首：`	d.push_front(i);`

  进队尾：`d.push_back(i);`

  出队首：`d.pop_front();` 

  出队尾：`d.pop_back();`

  队首的指针：`begin()`   //队首的指针，指向队首元素
  队尾的指针：`end()`   //队尾元素的下一位作为指针

  队列空：`d.empty();`

  清空：`d.clear();`

  在第一个元素后插入：`insert(d.begin()+1,i);`

  迭代器：

  ```c++
  deque<int>::iterator rit;
      for(rit = d.begin(); rit != d.end(); rit ++)
          cout<<*rit<<" ";
      cout<<endl;
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

## 双指针：

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

## 动态规划：

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



## **归并排序**：两个有序数组 合并成 一个有序数组

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
  

## 深度优先 广度优先

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



# 牛客白板



#计算各种 a+b

```c++
#include <iostream>
using namespace std;
int main(){
    int n;
    cin>>n;
    for(int i=0;i<n;i++){
        int a,b;
        cin>>a>>b;
        cout<<a+b<<endl;
    }
    return 0;
}
```

```c++
#include <iostream>
using namespace std;
int main(){
    int a,b;
    while(true){
        cin>>a>>b;
        if(a==0&&b==0) break;
        cout<<a+b<<endl;
    }
    return 0;
};
```



# 问答

https://www.nowcoder.com/ta/review-c/review?query=&asc=true&order=&page=23

### static关键字的作用

- 全局静态变量 
- 局部静态变量 
- 静态函数
- 类的静态成员 
- 类的静态函数

### C++和C的区别

设计思想上： 

  C++是面向对象的语言，而C是面向过程的结构化编程语言 

  语法上： 

  C++具有封装、继承和多态三种特性 

  C++相比C，增加多许多类型安全的功能，比如强制类型转换、 

  C++支持范式编程，比如模板类、函数模板等 

### C++中static关键字的作用 

- 对于函数定义和代码块之外的变量声明，static修改标识符的链接属性，由默认的external变为internal，作用域和存储类型不改变，这些符号只能在声明它们的源文件中访问。 
- 对于代码块内部的变量声明，static修改标识符的存储类型，由自动变量改为静态变量，作用域和链接属性不变。这种变量在程序执行之前就创建，在程序执行的整个周期都存在。 
- 对于被static修饰的普通函数，其只能在定义它的源文件中使用，不能在其他源文件中被引用 
- 对于被static修饰的类成员变量和成员函数，它们是属于类的，而不是某个对象，所有对象共享一个静态成员。静态成员通过<类名>::<静态成员>来使用。 

### c++中四种cast转换 

C++中四种类型转换是：static_cast, dynamic_cast, const_cast, reinterpret_cast 

- const_cast 

    用于将const变量转为非const 

- static_cast 

  用于各种隐式转换，比如非const转const，void*转指针等, static_cast能用于多态向上转化，如果向下转能成功但是不安全，结果未知； 

- dynamic_cast 

  用于动态类型转换。只能用于含有虚函数的类，用于类层次间的向上和向下转化。只能转指针或引用。向下转化时，如果是非法的对于指针返回NULL，对于引用抛异常。要深入了解内部转换的原理。 

  向上转换：指的是子类向基类的转换 

  向下转换：指的是基类向子类的转换 

  它通过判断在执行到该语句的时候变量的运行时类型和要转换的类型是否相同来判断是否能够进行向下转换。 

- reinterpret_cast 

   几乎什么都可以转，比如将int转指针，可能会出问题，尽量少用； 

- 为什么不使用C的强制转换？ 

  C的强制转换表面上看起来功能强大什么都能转，但是转化不够明确，不能进行错误检查，容易出错。 

### C/C++ 中指针和引用的区别

1.指针有自己的一块空间，而引用只是一个别名； 

2.使用sizeof看一个指针的大小是4，而引用则是被引用对象的大小； 

3.指针可以被初始化为NULL，而引用必须被初始化且必须是一个已有对象 的引用； 

4.作为参数传递时，指针需要被解引用才可以对对象进行操作，而直接对引 用的修改都会改变引用所指向的对象； 

5.可以有const指针，但是没有const引用； 

6.指针在使用中可以指向其它对象，但是引用只能是一个对象的引用，不能 被改变； 

7.指针可以有多级指针（**p），而引用至于一级；  

8.指针和引用使用++运算符的意义不一样； 

9.如果返回动态内存分配的对象或者内存，必须使用指针，引用可能引起内存泄露。 

### 判断点P在不在三角形内

https://www.nowcoder.com/ta/review-c/review?query=&asc=true&order=&page=26

### 智能指针

https://www.nowcoder.com/ta/review-c/review?query=&asc=true&order=&page=27

C++里面的四个智能指针: auto_ptr, shared_ptr, weak_ptr, unique_ptr 其中后三个是c++11支持，并且第一个已经被11弃用。 

| 为什么要使用智能指针： 

智能指针的作用是管理一个指针，因为存在以下这种情况：申请的空间在函数结束时忘记释放，造成内存泄漏。使用智能指针可以很大程度上的避免这个问题，因为智能指针就是一个类，当超出了类的作用域是，类会自动调用析构函数，析构函数会自动释放资源。所以智能指针的作用原理就是在函数结束时自动释放内存空间，不需要手动释放内存空间。 

智能指针主要用于管理在堆上分配的内存，它将普通的指针封装为一个栈对象。当栈对象的生存周期结束后，会在析构函数中释放掉申请的内存，从而防止内存泄漏。C++  11中最常用的智能指针类型为shared_ptr,它采用引用计数的方法，记录当前内存资源被多少个智能指针引用。该引用计数的内存在堆上分配。当新增一个时引用计数加1，当过期时引用计数减一。只有引用计数为0时，智能指针才会自动释放引用的内存资源。对shared_ptr进行初始化时不能将一个普通指针直接赋值给智能指针，因为一个是指针，一个是类。可以通过make_shared函数或者通过构造函数传入普通指针。并可以通过get函数获得普通指针。

| 智能指针有没有内存泄露的情况 

https://www.nowcoder.com/ta/review-c/review?query=&asc=true&order=&page=32

| 智能指针的内存泄漏如何解决 

为了解决循环引用导致的内存泄漏，引入了weak_ptr弱指针，weak_ptr的构造函数不会修改引用计数的值，从而不会对对象的内存进行管理，其类似一个普通指针，但不指向引用计数的共享内存，但是其可以检测到所管理的对象是否已经被释放，从而避免非法访问。

### 数组和指针的区别 

| 指针                                                         | 数组                                 |
| ------------------------------------------------------------ | ------------------------------------ |
| 保存数据的地址                                               | 保存数据                             |
| 间接访问数据，首先获得指针的内容，然后将其作为地址，从该地址中提取数据 | 直接访问数据，                       |
| 通常用于动态的数据结构                                       | 通常用于固定数目且数据类型相同的元素 |
| 通过Malloc分配内存，free释放内存                             | 隐式的分配和删除                     |
| 通常指向匿名数据，操作匿名函数                               | 自身即为数据名                       |

### 野指针

野指针就是指向一个已删除的对象或者未申请访问受限内存区域的指针

### 析构函数 & 虚函数

| 为什么析构函数必须是虚函数？为什么C++默认的析构函数不是虚函数 

将可能会被继承的父类的析构函数设置为虚函数，可以保证当我们new一个子类，然后使用基类指针指向该子类对象，释放基类指针时可以释放掉子类的空间，防止内存泄漏。 

C++默认的析构函数不是虚函数是因为虚函数需要额外的虚函数表和虚表指针，占用额外的内存。而对于不会被继承的类来说，其析构函数如果是虚函数，就会浪费内存。因此C++默认的析构函数不是虚函数，而是只有当需要当作父类时，设置为虚函数