from django import template
from main.models import Building, Sensor
from django.shortcuts import get_object_or_404
from django.db.models import Max

register = template.Library()


@register.filter(name='get_building_status')
def get_building_status(value, building_id):
    building_instance = None

    if building_id:
        building_instance = get_object_or_404(Building, pk=building_id)
    sensors = building_instance.sensor_set
    active_sensors = sensors.filter(state=True)
    if active_sensors.count() == 0:
        return 1
    else:
        return active_sensors.order_by("-criticaly")[0].criticaly
