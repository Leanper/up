#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/7/1 13:51
# @Author  :  Leanper

# @File    : 读取json.py
# @Software: PyCharm
# @Desc:

# TODO 读取数据
import json
str ="""
{
    "homeadlist": [
        {
            "id": 1,
            "imgurl": "/img/homead/a73b3f1d-0f14-429d-9d0f-70643fb0f0eb.jpg",
            "jumpflag": 0,
            "jumpurl": "",
            "posflag": 1,
            "remark": "1111",
            "cityid": 1
        },
        {
            "id": 12,
            "imgurl": "/img/homead/eb442fbf-49db-4ba6-a102-d781505f426d.jpg",
            "jumpflag": 0,
            "jumpurl": "",
            "posflag": 2,
            "remark": "",
            "cityid": 1
        },
        {
            "id": 14,
            "imgurl": "/img/homead/68109460-635d-4c5c-8be8-64d7c7889d18.jpg",
            "jumpflag": 0,
            "jumpurl": "http://shiranlife.kuaizhan.com/",
            "posflag": 4,
            "remark": "",
            "cityid": 1
        }
    ]
}

"""
# json转为对象
json_data = json.loads(str)
print('这是文件中的json数据：', json_data)
print('这是读取到文件数据的数据类型：', type(json_data))
print(json_data['homeadlist'])

for a in json_data['homeadlist']:
    print(a['posflag'])

# 对象转为字符串
info = json.dumps(json_data)
print(info)

