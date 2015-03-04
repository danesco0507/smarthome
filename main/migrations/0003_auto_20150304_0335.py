# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_auto_20150223_1412'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='state_definition',
            name='value',
        ),
        migrations.AddField(
            model_name='state_definition',
            name='false_state',
            field=models.CharField(max_length=30, null=True, verbose_name=b'False State Definition', blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='state_definition',
            name='true_state',
            field=models.CharField(max_length=30, null=True, verbose_name=b'True State Definition', blank=True),
            preserve_default=True,
        ),
        migrations.RemoveField(
            model_name='sensor',
            name='criticaly',
        ),
        migrations.AddField(
            model_name='sensor',
            name='criticaly',
            field=models.IntegerField(verbose_name=b'Sensor criticaly'),
            preserve_default=True,
        ),
    ]
