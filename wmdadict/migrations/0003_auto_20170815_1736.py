# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-08-15 07:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('wmdadict', '0002_auto_20170815_1625'),
    ]

    operations = [
        migrations.AlterField(
            model_name='dictionaryfield',
            name='description_long',
            field=models.TextField(blank=True, verbose_name='Long Description'),
        ),
    ]