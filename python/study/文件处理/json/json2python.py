#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/7/6 11:06
# @Author  :  Leanper

# @File    : json2python.py
# @Software: PyCharm
# @Desc:

import json

data = {
    'name': 'author',
    'age': 32,
    'sex': 1,
    'address': {'province': 'hb', 'city': 'hd'}
}
# 将 Python 字典类型转换为 JSON 对象
json_str = json.dumps(data)
print(json_str)

# 将 JSON 对象类型转换为 Python 字典
user_dic = json.loads(json_str)
print(user_dic['address'])
print(user_dic['name'])

# # 将 Python 字典直接输出到文件
# with open('pengjunlee.json', 'w', encoding='utf-8') as f:
#     json.dump(user_dic, f, ensure_ascii=False, indent=4)
#
# # 将类文件对象中的JSON字符串直接转换成 Python 字典
# with open('pengjunlee.json', 'r', encoding='utf-8') as f:
#     ret_dic = json.load(f)
#     print(type(ret_dic))  # 结果 <class 'dict'>
#     print(ret_dic['name'])  # 结果 pengjunlee