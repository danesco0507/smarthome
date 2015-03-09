from django.contrib import admin
from main.models import Building
from main.models import Building_type
from main.models import Neighborhood
from main.models import Sensor
from main.models import Sensor_type
from main.models import State_definition

# Register your models here.
admin.site.register(Building)
admin.site.register(Building_type)
admin.site.register(Neighborhood)
admin.site.register(Sensor)
admin.site.register(Sensor_type)
admin.site.register(State_definition)


