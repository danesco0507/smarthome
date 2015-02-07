from django import forms

__author__ = 'agiles'

from django.forms import ModelForm
from django.forms.models import inlineformset_factory
from main.models import Sensor, Sensor_type, Building
from django.contrib.auth.models import Group

class SensorForm(ModelForm):
    class Meta:
        model = Sensor
        fields = '__all__'

class SensorTypeForm(ModelForm):
    class Meta:
        model = Sensor_type
        fields = '__all__'

class BuildingForm(ModelForm):
    class Meta:
        model = Building
        fields = '__all__'