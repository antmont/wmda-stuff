# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-08-23 11:55
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('wmdadict', '0010_wmdaform_form_url'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bmdwfield',
            name='required',
            field=models.CharField(blank=True, choices=[('Y', 'Yes'), ('N', 'No')], max_length=1),
        ),
        migrations.AlterField(
            model_name='wmdaform',
            name='description',
            field=models.CharField(blank=True, max_length=200),
        ),
    ]
