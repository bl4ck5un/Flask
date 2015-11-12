from django.db import models

# Create your models here.

class Tag(models.Model):
    text = models.CharField(max_length=50)

    def __str__(self):
        return self.text

class Article(models.Model):
    title = models.CharField(max_length=200)
    slug = models.SlugField(default='-')

    content = models.TextField()
    add_date = models.DateTimeField('date added')
    is_draft = models.BooleanField(default=True)
    is_public = models.BooleanField(default=False)
    tags = models.ManyToManyField(Tag)

    def __str__(self):
        return self.title
