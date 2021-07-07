from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
from blog.models import Artcile
from blog.models import Author

from blog import models

def runoob(request):
    context          = {}
    context['hello'] = 'Hello World!'
    return render(request, 'roob.html', context)


def hello(request, year):
    return HttpResponse('Hello,world  %s' %year)


def testdb(request):
    test1 = Artcile(1,"标题","内容")
    test1.save()

    return HttpResponse("<p>数据添加成功！</p>")

def loadblog(request):


    return  render(request,"blog.html")

def loadsuccess(request):
    if request.method == "POST":
        name = request.POST.get('username')
        password = request.POST.get('sex');
        print('用户名:', name, ' 密码:', password);
    return HttpResponse('用户名:%s 密码:%s' %(name,password) )


def addAuthor(request):
    if request.method == "POST":
        name = request.POST.get('ausername')
        sex = request.POST.get('asex')
        age = request.POST.get('aage')

        test1 = Authors(name, sex,age)
        test1.save()
    return HttpResponse()

def selectAuthor(request):

    myauthor = models.Authors.objects.all()
    article_values = models.Authors.objects.filter().values()

    print(article_values)
    context = {
            # 'sitename': sitename,
            # 'url': url,
            'list2': article_values,
        }
    return  render(request, "blog.html", context)


def updateInfo(request,nameold,namenew):
    title = models.Author.objects.filter(name=nameold).update(name=namenew)
    return HttpResponse("%s" %title)



def addArcile(request):
    arc= Artciles()
    arc.title = "标题2"
    arc.content = "内容哦"

    arc.save()
    return HttpResponse("添加成功")



def selectArcile(request):

    article_values = models.Artciles.objects.filter().values()

    print(article_values)
    return HttpResponse("查询成功")