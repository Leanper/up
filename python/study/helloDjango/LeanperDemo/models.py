from django.db import models

# Create your models here.

class Student(models.Model):

    name = models.TextField(max_length=32)
    classes = models.TextField(max_length=64)
    menuid = models.TextField()

class Teacher(models.Model):

    name = models.TextField(max_length=32)
    classes = models.TextField(max_length=64)


class Classed(models.Model):
    name = models.TextField(max_length=32)