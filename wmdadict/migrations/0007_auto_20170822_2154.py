# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-08-22 11:54
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('wmdadict', '0006_auto_20170817_2046'),
    ]

    operations = [
        migrations.CreateModel(
            name='EmdisSemantics',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('order', models.PositiveIntegerField(db_index=True, editable=False)),
                ('required', models.CharField(blank=True, choices=[('R', 'Required'), ('O', 'Optional')], max_length=1)),
            ],
            options={
                'ordering': ('emdis_message', 'order'),
            },
        ),
        migrations.RemoveField(
            model_name='emdisfield',
            name='emdis_messages',
        ),
        migrations.AddField(
            model_name='emdissemantics',
            name='emdis_field',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='wmdadict.EmdisField'),
        ),
        migrations.AddField(
            model_name='emdissemantics',
            name='emdis_message',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='wmdadict.EmdisMessage'),
        ),
        migrations.AddField(
            model_name='emdisfield',
            name='messages',
            field=models.ManyToManyField(through='wmdadict.EmdisSemantics', to='wmdadict.EmdisMessage'),
        ),
    ]
