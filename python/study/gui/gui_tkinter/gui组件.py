#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/26 16:15
# @Author  :  Leanper

# @File    : gui组件.py
# @Software: PyCharm
# @Desc: checkbutton radiobutton等组件学习

from tkinter import *

app = Tk()
app.title("组件学习")

# 定义一个值 获取checkbutton的信息
value = IntVar()
check=Checkbutton(app, text="同意用户协议", variable=value)
check.pack()

# 为了更直观的看出选中和未选中v的表现状态，可以将其显示在Label标签里
l = Label(app, textvariable=value)
l.pack()

'''
多选框
'''
womens = ["貂蝉", "西施", "如花", "凤姐"]

value1=[]

for girl in womens:
    value1.append(IntVar())
    b = Checkbutton(app, text=girl, variable=value1[-1])
    b.pack()




'''
单选框
'''
value2 = IntVar()
man = Radiobutton(app, text="男", variable=value2, value=1)
man.pack()
women = Radiobutton(app, text="女", variable=value2, value=2)
women.pack()
print(value2)
show = Label(app, text="选择的为$textvariable=value2", textvariable=value2)
show.pack()





app.mainloop()