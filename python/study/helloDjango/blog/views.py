from django.http import HttpResponse
from django.shortcuts import render
# Create your views here.

def sayHello(request):
    return HttpResponse("Hello world ! ")

def sayGood(request):
    return HttpResponse("<p> dddHello world !</p>")


def runoob(request):
    context          = {}
    context['hello'] = 'Hello World!'
    return render(request, 'roob.html', context)