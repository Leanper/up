#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/14 16:16
# @Author  :  Leanper

# @File    : 错误与异常.py
# @Software: PyCharm
#@Desc:try catch

'''

格式
try:
  正常运行代码，当代码报错时中断 走except代码 如果except不包括此类型错误 则向上抛到try中

except:
 一个try可以包含多个except,这些异常将被放在一个括号里成为一个元组
    如：except (RuntimeError, TypeError, NameError):


else 子句将在 try 子句没有发生任何异常的时候执行。


finally   finally 语句无论异常是否发生都会执行：

raise Exception("报错了") 使用raise 抛出异常


'''


# TODO  用户自定义异常

