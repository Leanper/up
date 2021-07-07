from django.db import models

# Create your models here.


class Author( models.Model):


    name = models.TextField(max_length=32)
    sex = models.CharField(max_length=8)
    age = models.IntegerField()
    def __str__(self):
        return self.name

class Artcile( models.Model):

    artcile_id = models.AutoField(primary_key=True)
    title = models.TextField()
    content = models.TextField()
    publish_date = models.DateTimeField(auto_now=True)
    author_id = models.ForeignKey(Author, on_delete=models.CASCADE)
    def __str__(self):
        return self.name



class sideBar(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.TextField()
