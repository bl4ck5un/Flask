from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from .models import Article
from .models import Tag

def list(request):
    l = Article.objects.all()
    return render(request, 'list.html', {'article_list': l})

def detail(request, slug):
    post = get_object_or_404(Article, slug=slug)

    return render(request, 'blog/article.html', {
        'content': post,
    })
