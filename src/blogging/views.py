from django.shortcuts import render
from django.http import HttpResponse
from .models import Article
from .models import Tag

def list(request):
    return render(request, 'list.html')
