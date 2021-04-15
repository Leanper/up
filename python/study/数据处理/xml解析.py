#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/15 13:47
# @Author  :  Leanper

# @File    : xml解析.py
# @Software: PyCharm
#@Desc: 解析xml

# Python 有三种方法解析 XML，SAX，DOM，以及 ElementTree:

import xml.sax


from xml.dom.minidom import parse
import xml.dom.minidom
#TODO sax方式 不方便 代码繁琐

# dom解析文件

# 使用minidom解析器打开 XML 文档
DOMTree = xml.dom.minidom.parse("C:/Users/ZX50J/Desktop/movies.xml")
element=DOMTree.documentElement

if(element.hasAttribute("shelf")):
    print("Root element : %s" % element.getAttribute("shelf"))

movies = element.getElementsByTagName("movie")


'''


-<movie title="Ishtar">

<type>Comedy</type>

<format>VHS</format>

<rating>PG</rating>

<stars>2</stars>

<description>Viewable boredom</description>

</movie>

</collection>
'''
for movie in movies:
    if movie.hasAttribute("title"):
        print("Title: %s" % movie.getAttribute("title"))

    type = movie.getElementsByTagName('type')[0]
    print("Type: %s" % type.childNodes[0].data)
    format = movie.getElementsByTagName('format')[0]
    print("Format: %s" % format.childNodes[0].data)
    rating = movie.getElementsByTagName('rating')[0]
    print("Rating: %s" % rating.childNodes[0].data)
    description = movie.getElementsByTagName('description')[0]
    print("Description: %s" % description.childNodes[0].data)