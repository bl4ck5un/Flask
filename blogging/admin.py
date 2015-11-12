from django.contrib import admin
from forms import ArticleForm
from models import Article
from models import Tag


class ArticleAdmin(admin.ModelAdmin):
    form = ArticleForm
    prepopulated_fields = {
        'slug' : ('title', )
    }

admin.site.register(Article, ArticleAdmin)
admin.site.register(Tag)
