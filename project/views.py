from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    ctx = dict(
        title="Fan Zhang",
    )

    return render(request, 'index.html', ctx)

def about(request):
    return render(request, 'single.html', {"content":'Comming soon'})
