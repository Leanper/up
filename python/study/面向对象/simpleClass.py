#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/28 10:30
# @Author  :  Leanper

# @File    : simpleClass.py
# @Software: PyCharm
# @Desc:


class SimpleClass:
    name = ""
    age = 0

    def __init__(self, n, a):
        self.age = a
        self.name = n
        print("%s 说 %d 岁了" % (self.name, self.age))

    def fight(self):
        print("%s 说我是法外狂徒" % self.name)


x = SimpleClass("张三", 9)
x.fight()
