#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/12 9:25
# @Author  :  Leanper

# @File    : Dictionary字典.py
# @Software: PyCharm
#@Desc: 字典

'''

字典是另一种可变容器模型，且可存储任意类型对象。

字典的每个键值 key=>value 对用冒号 : 分割，每个对之间用逗号(,)分割，整个字典包括在花括号 {} 中 ,格式如下所示：
d = {key1 : value1, key2 : value2, key3 : value3 }


不允许同一个键出现两次。创建时如果同一个键被赋值两次，后一个值会被记住
d[key]=1 d[key]=2 表示值为2
'''

d = {'key':"value", 'key2': "value2"}

print(d.keys())
print(d.values())

# 访问元素 若不存在则报错
print(d['key'])

# 修改字典内容 只能修改value
d["key"]="8"
print(d["key"])

# 删除字典
# d.clear清空  del d 删除d 字典

a=True
if(a):
    print("jee")




# 内置函数
'''
1	len(dict)
计算字典元素个数，即键的总数。 	

>>> dict = {'Name': 'Runoob', 'Age': 7, 'Class': 'First'}
>>> len(dict)
3

2	str(dict)
输出字典，以可打印的字符串表示。 	

>>> dict = {'Name': 'Runoob', 'Age': 7, 'Class': 'First'}
>>> str(dict)
"{'Name': 'Runoob', 'Class': 'First', 'Age': 7}"


3	type(variable)
返回输入的变量类型，如果变量是字典就返回字典类型。 	

>>> dict = {'Name': 'Runoob', 'Age': 7, 'Class': 'First'}
>>> type(dict)
<class 'dict'>


Python字典包含了以下内置方法：
序号	函数及描述
1	radiansdict.clear()
删除字典内所有元素
2	radiansdict.copy()
返回一个字典的浅复制
3	radiansdict.fromkeys()
创建一个新字典，以序列seq中元素做字典的键，val为字典所有键对应的初始值
4	radiansdict.get(key, default=None)
返回指定键的值，如果键不在字典中返回 default 设置的默认值
5	key in dict
如果键在字典dict里返回true，否则返回false
6	radiansdict.items()
以列表返回可遍历的(键, 值) 元组数组
7	radiansdict.keys()
返回一个迭代器，可以使用 list() 来转换为列表
8	radiansdict.setdefault(key, default=None)
和get()类似, 但如果键不存在于字典中，将会添加键并将值设为default
9	radiansdict.update(dict2)
把字典dict2的键/值对更新到dict里
10	radiansdict.values()
返回一个迭代器，可以使用 list() 来转换为列表
11	pop(key[,default])
删除字典给定键 key 所对应的值，返回值为被删除的值。key值必须给出。 否则，返回default值。

'''
