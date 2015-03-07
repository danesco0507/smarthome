# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('main', '001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Building',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'Building name')),
                ('address', models.CharField(max_length=30, verbose_name=b'Address')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Building_type',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'Building type')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Neighborhood',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'Neighborhood')),
                ('risk_level', models.IntegerField(verbose_name=b'Risk level')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Sensor',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=50, verbose_name=b'Sensor name')),
                ('description', models.CharField(max_length=100, verbose_name=b'Sensor description')),
                ('state', models.BooleanField(default=b'false', verbose_name=b'Sensor state')),
                ('criticaly', models.ImageField(upload_to=b'', verbose_name=b'Sensor criticaly')),
                ('Building_id', models.ForeignKey(verbose_name=b'Building', to='main.Building')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Sensor_type',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'Sensor type name')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='State_definition',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'State definition name')),
                ('value', models.BooleanField(default=b'false', verbose_name=b'State definition value')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='sensor_type',
            name='State_definition_id',
            field=models.ForeignKey(verbose_name=b'Sensor type state definition', to='main.State_definition'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='sensor',
            name='Sensor_type_id',
            field=models.ForeignKey(verbose_name=b'Sensor type', to='main.Sensor_type'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='building',
            name='building_type',
            field=models.ForeignKey(verbose_name=b'Building type', to='main.Building_type'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='building',
            name='neighborhood_id',
            field=models.ForeignKey(verbose_name=b'Neighborhood', to='main.Neighborhood'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='building',
            name='user_id',
            field=models.ForeignKey(verbose_name=b'User', to=settings.AUTH_USER_MODEL),
            preserve_default=True,
        ),
    ]
