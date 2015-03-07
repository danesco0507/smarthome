from django.shortcuts import render
from main.models import Sensor, Sensor_type, Building
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect
from django.db.models import Q
from django.contrib.auth.decorators import login_required
from django.template import RequestContext, loader
from django.contrib.auth.models import User,Group

@login_required()
def index (request):
    context = {}
    return render(request, 'index.html',context)


