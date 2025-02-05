from django.http import HttpResponse, HttpResponseRedirect
import models
import bforms
from django.shortcuts import render_to_response
from google.appengine.api import users

def render(template, payload):
    payload['recents'] = models.Expert.all().order('-name').fetch(5)
    return render_to_response(template, payload)

def index(request):
    experts = models.Expert.all().order('-name').fetch(20)

    if users.get_current_user():
      url = users.create_logout_url(request.path)
      url_linktext = 'Logout'
    else:
      url = users.create_login_url(request.path)
      url_linktext = 'Login'
          
    payload = dict(experts = experts)
    payload['url'] = url
    payload['url_linktext'] = url_linktext
    return render('index.html', payload)

def create(request):
    if request.method == 'GET':
        expertform = bforms.ExpertForm()
        
    if request.method == 'POST':
        expertform = bforms.ExpertForm(request.POST)
        if expertform.is_valid():
            expert = expertform.save()
            return HttpResponseRedirect(expert.get_absolute_url())
    payload = dict(expertform=expertform)
    return render('create.html', payload)

def search(request):
    if request.method == 'GET':
        searchform = bforms.SearchForm()
        
    if request.method == 'POST':
        searchform = bforms.SearchForm(request.POST)
        if searchform.is_valid():
            searchcondition = searchform.save()
            knowledge_area = searchcondition.knowledge_area
            experts = models.Expert.gql("WHERE sap_experience <= :1",  knowledge_area.split(' ')[0] + "\0xEF\0xBF\0xBD")
            payload = dict(experts=experts)
            return render('search_result.html', payload)
    payload = dict(searchform=searchform)
    return render('search.html', payload)

def show(request, expert_key):
    expert = models.Expert.get(expert_key)
    if request.method == 'POST':
        return HttpResponseRedirect('./results/')    
    payload = dict(expert = expert)
    return render('show.html', payload)

def edit(request, expert_key):
    expert = models.Expert.get(expert_key)
    if request.method == 'GET':
        expertform = bforms.ExpertForm(instance = expert)        
        
    if request.method == 'POST':
        expertform = bforms.ExpertForm(request.POST)
        if expertform.is_valid():
            expert = expertform.save()
            return HttpResponseRedirect(expert.get_absolute_url())
    payload = dict(expertform=expertform)
    return render('edit.html', payload)