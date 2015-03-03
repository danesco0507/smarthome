from main.models import Sensor, Sensor_type, Building
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required

# Create your views here.


@login_required()
def sensors_list(request, building_id=None):
    building_instance = None

    if building_id:
        building_instance = get_object_or_404(Building, pk=building_id)
    sensorList = Sensor.objects.filter(Building_id = building_instance)
    context= {'sensorList': sensorList}
    return render(request, 'home_user/sensors_list.html',context)

@login_required()
def building_list(request):
    user = request.user

    buildingList = Building.objects.filter(user_id = user.id)

    context= {'buildingList': buildingList}
    return render(request, 'home_user/building_list.html',context)

