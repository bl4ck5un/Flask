from django.db import models

# Create your models here.

class Article(models.Model):
    title = models.CharField(max_length=200)
    content = models.TextField()
    add_date = models.DateTimeField('date added')

    def __str__(self):
        return self.title

class Tag(models.Model):
    article = models.ManyToManyField(Article)
    text = models.CharField(max_length=50)

    def __str__(self):
        return self.text
