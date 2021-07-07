#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/14 16:03
# @Author  :  Leanper

# @File    : File.py
# @Software: PyCharm
# @Desc:文件夹处理

import os
f = open("C:/Users/ZX50J/Desktop/test.txt", "a+")
f.write("啊说的话\n破神将世界啊")
info = f.read()
print(info)
