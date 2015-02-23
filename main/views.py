from django.shortcuts import render
from forms import SensorForm, SensorTypeForm, BuildingForm
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
    return render(request, 'main/index.html',context)

@login_required(login_url='/accounts/login/')
def sensors_list(request, building_id=None):
    building_instance = None

    if building_id:
        building_instance = get_object_or_404(Building, pk=building_id)

    form = BuildingForm(request.POST or None, instance=building_instance)


    if form.is_valid():
        obj = form.save(commit = False)
        obj.save()
        return HttpResponseRedirect('/main/')

    sensorList = Sensor.objects.filter(Building_id = building_instance)
    context= {'sensorList': sensorList,'form': form}
    return render(request, 'register/sensors_list.html',context)
