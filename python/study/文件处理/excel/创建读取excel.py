#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/7/1 16:56
# @Author  :  Leanper
# @File    : 创建读取excel.py
# @Software: PyCharm
# @Desc:


import openpyxl


file_1 = openpyxl.load_workbook('studyexcel.xlsx')
file_1.create_sheet('表单三')
sheet2 = file_1.get_sheet_by_name('表单2')
print(sheet2)

file_1.close()

