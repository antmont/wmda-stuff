# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-14 05:26
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wmdadict', '0021_auto_20170914_1050'),
    ]

    operations = [
        migrations.RenameField(
            model_name='dictionaryfield',
            old_name='field_type',
            new_name='field_type_old',
        ),
    ]