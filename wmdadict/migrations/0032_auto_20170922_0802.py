# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-21 22:02
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('wmdadict', '0031_auto_20170917_2121'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bmdwelementtype',
            name='description',
            field=models.TextField(blank=True, help_text='Formatting and newlines will not be displayed.'),
        ),
        migrations.AlterField(
            model_name='bmdwfieldtype',
            name='description',
            field=models.TextField(blank=True, help_text='Formatting and newlines will not be displayed.'),
        ),
        migrations.AlterField(
            model_name='datafamily',
            name='contact',
            field=models.CharField(blank=True, help_text='Formatting and newlines will not be displayed.', max_length=50),
        ),
        migrations.AlterField(
            model_name='emdisfieldtype',
            name='description',
            field=models.TextField(blank=True, help_text='Formatting and newlines will not be displayed.'),
        ),
    ]
