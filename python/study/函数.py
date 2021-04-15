#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/14 14:19
# @Author  :  Leanper

# @File    : 函数.py
# @Software: PyCharm
#@Desc: 函数

'''
格式：
def 函数名（参数列表）:
    函数体
    不带表达式的 return 相当于返回 None


    不可变类型：变量赋值 a=5 后再赋值 a=10，这里实际是新生成一个 int 值对象 10，再让 a 指向它，而 5 被丢弃，不是改变 a 的值，相当于新生成了 a。

    可变类型：变量赋值 la=[1,2,3,4] 后再赋值 la[2]=5 则是将 list la 的第三个元素值更改，本身la没有动，只是其内部的一部分值被修改了。
'''



def prints(str):

    print(str)
    return len(str)


# 关键字参数

def methods(str,str2):
    prints("str位"+str+"---str2"+str2)

methods(str="内容",str2="dfdf")



# 默认参数 给定默认值 ，不传入则为默认值
def functions(age=10,name="黎明"):
    print("年龄为"+age+"姓名为："+name)

functions("22",)

# 可变参数
'''
def method(*arg): 一个星代表可变长度参数
加了两个星号 ** 的参数会以字典的形式导入。

'''
def printlist(*vartuple):
    print(vartuple)

printlist("22","sds","aaa")

def printinfo(  **vartuple ):
   print (vartuple)


printinfo(a="ss",b=4)

#  匿名函数 使用lambda
'''
所谓匿名，意即不再使用 def 语句这样标准的形式定义一个函数。

    lambda 只是一个表达式，函数体比 def 简单很多。
    lambda的主体是一个表达式，而不是一个代码块。仅仅能在lambda表达式中封装有限的逻辑进去。
    lambda 函数拥有自己的命名空间，且不能访问自己参数列表之外或全局命名空间里的参数。
    虽然lambda函数看起来只能写一行，却不等同于C或C++的内联函数，后者的目的是调用小函数时不占用栈内存从而增加运行效率。

语法

lambda 函数的语法只包含一个语句，如下：

lambda [arg1 [,arg2,.....argn]]:expression

sum = lambda arg1, arg2: arg1 + arg2
print ("相加后的值为 : ", sum( 10, 20 ))

'''

getmininfo=lambda a, b, c: print("a为%s,b为%s,c%s" %(a,b,c))
getmininfo(10,20,44)
