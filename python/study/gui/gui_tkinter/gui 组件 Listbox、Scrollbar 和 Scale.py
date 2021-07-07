#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/26 16:46
# @Author  :  Leanper

# @File    : gui 组件 Listbox、Scrollbar 和 Scale.py
# @Software: PyCharm
#@Desc:

from tkinter import *

app = Tk()
# 初始化listBox
listBox = Listbox(app)


for x in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]:
    listBox.insert(END, x)

listBox.pack()


# #添加按钮组件选中哪个按下删除哪个
theButton = Button(app, text='删除它',
                   command=lambda  x=listBox: x.delete(ACTIVE)) #ACTIVE表示当前选中的值
theButton.pack()



'''
Scrollbar 滚动条组件

1. 设置该组件的 yscrollcommand 选项为 Scrollbar 组件的 set() 方法

2. 设置 Scrollbar 组件的 command 选项为该组件的 yview() 方法
'''

sb = Scrollbar(app)
sb.pack(side=RIGHT, fill=Y)
lb = Listbox(app, yscrollcommand=sb.set)

for x in  range(30):
    lb.insert(END, x)

lb.pack(side=LEFT, fill=BOTH)
sb.config(command=lb.yview)  #config方法设置某个选项的值



'''
Scale 组件
从0到30，默认竖直排列。orient排列方式
sc = Scale(app, from_=0, to_=30,orient=HORIZONTAL)
tickinterval=5每5个步长显示刻度
#resolution设置每次移动多少个长度，等于5的话，每次改变只能改变5
#设置length长度，不然都堆在一起
'''
sc = Scale(app, from_=0, to_=200, tickinterval=5, resolution=10,length=800, orient=HORIZONTAL)


sc.pack(side=BOTTOM)

def show():
    print(sc.get())
Button(app, text='获取位置', command=show).pack()
app.mainloop()


