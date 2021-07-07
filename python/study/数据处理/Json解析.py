#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/15 14:18
# @Author  :  Leanper

# @File    : Json解析.py
# @Software: PyCharm
#@Desc:
'''
 json.dumps(): 对数据进行编码。
json.loads(): 对数据进行解码。
'''

import json

# Python 字典类型转换为 JSON 对象
data = {
    'no': 1,
    'name': 'Runoob',
    'url': 'http://www.runoob.com',
    'list': "{[\"id\":1 , \"name\":\"张三\"],[\"id\":2 , \"name\":\"李四\"]}"
}

# 字典转化为json
json_str = json.dumps(data)
print("Python 原始数据：", repr(data))
print("JSON 对象：", json_str)
json_str.__getattribute__(list)

str=json.loads(json_str)
print("JSON 转化为String", str)











