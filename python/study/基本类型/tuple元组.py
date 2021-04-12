#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/12 9:24
# @Author  :  Leanper

# @File    : tuple元组.py
# @Software: PyCharm
#@Desc: 元组

# -------------------
# 元组使用（）列表使用[]
# 元组不允许修改内容



tup1 = ('Google', 'Runoob', 1997, 2000)
print(tup1)

# 截取对象
print(tup1[0:2])

# 支持倒叙查询
print(tup1[-2])

# 元组中只包含一个元素时，需要在元素后面添加逗号，否则括号会被当作运算符使用：

tup2=(3)
print(tup2)
tup3=(3,)
print(tup3)

# 删除元组 del 将输出 NameError: name 'tup2' is not defined 类型错误 tup2不存在
del tup2
# print(tup2)

# 操作符
# 2.1 in 判断是否在元组中 结果返回bool值
booleans=2000 in tup1
print(booleans)

# 内置函数

# len计算长度
print(len(tup1))

# max min(tup1) 求极值

#  元组和list转化

list1= ['Google', 'Taobao', 'Runoob', 'Baidu']
tup4=tuple(list1)
print(tup4)
list2=list(tup4)
print(list2)

