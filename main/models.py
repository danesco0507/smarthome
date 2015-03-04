from django.db import models
from django.contrib.auth.models import User, Group

# Create your models here.

class Building_type(models.Model):
    name=models.CharField(max_length=30, verbose_name='Building type')


class Neighborhood(models.Model):
    name=models.CharField(max_length=30, verbose_name='Neighborhood')
    risk_level=models.IntegerField(verbose_name='Risk level')

class Building(models.Model):
    name = models.CharField(max_length=30, verbose_name='Building name')
    address = models.CharField(max_length=30, verbose_name='Address')
    user_id=models.ForeignKey(User, verbose_name='User')
    building_type=models.ForeignKey(Building_type, verbose_name='Building type')
    neighborhood_id=models.ForeignKey(Neighborhood, verbose_name='Neighborhood')

class State_definition(models.Model):
    name = models.CharField(max_length=30, verbose_name='State definition name')
    true_state = models.CharField(max_length=30, verbose_name='True State Definition')
    false_state = models.CharField(max_length=30, verbose_name='False State Definition')

class Sensor_type(models.Model):
    name=models.CharField(max_length=30, verbose_name='Sensor type name')
    State_definition_id=models.ForeignKey(State_definition, verbose_name='Sensor type state definition')

class Sensor(models.Model):
    name=models.CharField(max_length=50, verbose_name='Sensor name')
    description=models.CharField(max_length=100, verbose_name='Sensor description')
    state=models.BooleanField( default='false', verbose_name='Sensor state')
    criticaly=models.IntegerField( verbose_name='Sensor criticaly')
    Building_id=models.ForeignKey(Building, verbose_name='Building')
    Sensor_type_id=models.ForeignKey(Sensor_type, verbose_name='Sensor type')
