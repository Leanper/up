#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/13 8:52
# @Author  :  Leanper

# @File    : for.py
# @Software: PyCharm
#@Desc: for循环

'''
格式  for x in list:


break 语句可以跳出 for 和 while 的循环体。如果你从 for 或 while 循环中终止，任何对应的循环 else 块将不执行。
continue 语句被用来告诉 Python 跳过当前循环块中的剩余语句，然后继续进行下一轮循环。

'''

mList = [1, 3, 5, 6, 7, 8, 9]

for x in mList:
    if(x==4):
        print("四")
    elif( x == 7):
        print("7")
    else:
        print(x)

# range生成整数数列

mList2 = range(10)

sum=0
for x in mList2:
    sum+=x

print(sum)



