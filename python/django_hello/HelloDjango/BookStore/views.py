from django.shortcuts import render

# Create your views here.


from django.http import HttpResponse
from BookStore import models

def addData(request):
    models.Publish.objects.create(name='上海出版额社', address='上海')
    models.Publish.objects.create(name="北京出版社", address="御花园")
    models.Publish.objects.create(name="邮电出版社", address="北京")
    models.Publish.objects.create(name="清华出版社", address="北京")

    return  HttpResponse("<p>数据添加成功！</p>")