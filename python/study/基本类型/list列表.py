#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/12 9:24
# @Author  :  Leanper

# @File    : list列表.py
# @Software: PyCharm
#@Desc:list列表学习

colorList = ["red", "blue", "green", "pink", 'black', 'white']

print("输出下标为0元素"+colorList[0])
# 1.2 当下标为负数的时候表示倒序，倒叙从-1开始
print("输出下标为-1元素"+colorList[-1])
#1.3 list截取
nums = [10, 20, 30, 40, 90, 60, 70, 80, 50]
print(nums[0:4])
# print('colorList截取'+ colorList[2:4])

# 从1到最后
print(nums[1:])


# 1.4 删除某个元素 下表从0开始
del colorList[5]
print(colorList)


#1.5 求长度 极值
print("几何长度为")
print(len(colorList))

# min max 返回最大最小值
print(max(nums))
print(min(nums))


# -----------------------------------
# 2.1 list复制
colorLists=colorList.copy()
print(colorLists)

# 2.2 list 清空列表
colorLists.clear()
print(colorLists) #输出一个空字符串[]

# 2.3 list排序
numsa = [10, 20, 30, 40, 90, 60, 70, 80, 50]
print(numsa.sort())

# 2.4 list 插入 insert() 第一个元素表示位置，第二个要插入的元素
colorList.insert(0 ,"Leanper")
print(colorList)

# 2.5 list 索引 index(x) x元素的位置从1开始
print(colorList.index("green"))

#2.6 count统计出现次数 只统计元素 不统计元素中某个字符
print(colorList.count("pink"))


# 2.7 expend 在列表末尾一次性追加另一个序列中的多个值（用新列表扩展原来的列表）
newlist=colorList.extend(nums)
print(newlist)

#2.8 pop移除某个元素 默认最后一个 并返回值

blue=colorList.pop()
print(blue)
print(colorList)

# 2.9 	list.sort( key=None, reverse=False)
# 对原列表进行排序

#2.10 反向列表中元素
# colorList.reverse()
#2.11 在列表末尾添加新的对象
colorList.append("新元素")

#2.12 移除列表中某个值的第一个匹配项
colorList.remove("green")
print(colorList)



