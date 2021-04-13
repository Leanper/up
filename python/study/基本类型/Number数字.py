#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/12 9:24
# @Author  :  Leanper

# @File    : Number数字.py
# @Software: PyCharm
#@Desc:  Number

'''
整型(Int) - 通常被称为是整型或整数，是正或负整数，不带小数点。Python3 整型是没有限制大小的，可以当作 Long 类型使用
浮点型(float) - 浮点型由整数部分与小数部分组成，浮点型也可以使用科学计数法表示（2.5e2 = 2.5 x 102 = 250）


复数( (complex)) - 复数由实数部分和虚数部分构成，可以用a + bj,或者complex(a,b)表示， 复数的实部a和虚部b都是浮点型。
'''
import random

'''
数据类型转化
a=10.7
int(a) 将a转化为int类型数据 转为10
float(a) 转化为浮点

15/3 =5.0 
15//3=5  # 整数除法返回向下取整后的结果 ,余分母有关系 8//2.0=4.0
16%3=5   # ％操作符返回除法的余数


del a 删除变量 再次引用咋会nameError 没有找到这个变量

2**4 表示2的4次方 
2**4=16


max(x1, x2,...) 	返回给定参数的最大值，参数可以为序列。
min(x1, x2,...) 	返回给定参数的最小值，参数可以为序列。
modf(x) 	返回x的整数部分与小数部分，两部分的数值符号与x相同，整数部分以浮点型表示。
pow(x, y)	x**y 运算后的值。




'''


'''

随机函数	描述
choice(seq)	从序列的元素中随机挑选一个元素，比如random.choice(range(10))，从0到9中随机挑选一个整数。
randrange ([start,] stop [,step]) 	从指定范围内，按指定基数递增的集合中获取一个随机数，基数默认值为 1
random() 	随机生成下一个实数，它在[0,1)范围内。
seed([x]) 	改变随机数生成器的种子seed。如果你不了解其原理，你不必特别去设定seed，Python会帮你选择seed。
shuffle(lst) 	将序列的所有元素随机排序
uniform(x, y)	随机生成下一个实数，它在[x,y]范围内。
'''

print(random.choice(range(20)))

print(random.uniform(10, 20))

print(8//4.0)

var = 10
a =10.6
print(int(a))

print(var)
print(a)

del a
# print(a)
