# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-17 11:04
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('wmdadict', '0029_auto_20170917_2049'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='bmdwfield',
            name='element_type_old',
        ),
        migrations.RemoveField(
            model_name='bmdwfield',
            name='required_old',
        ),
        migrations.RemoveField(
            model_name='bmdwfield',
            name='type_old',
        ),
        migrations.RemoveField(
            model_name='emdissemantics',
            name='required_old',
        ),
        migrations.AlterField(
            model_name='bmdwfield',
            name='dict_field',
            field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.DictionaryField', verbose_name='WMDA Dictionary Field'),
            preserve_default=False,
        ),
        # migrations.AlterField(
        #     model_name='bmdwfield',
        #     name='element_type',
        #     field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.BmdwElementType'),
        #     preserve_default=False,
        # ),
        # migrations.AlterField(
        #     model_name='bmdwfield',
        #     name='required',
        #     field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.RequiredFieldType'),
        #     preserve_default=False,
        # ),
        # migrations.AlterField(
        #     model_name='bmdwfield',
        #     name='type',
        #     field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.BmdwFieldType'),
        #     preserve_default=False,
        # ),
        migrations.AlterField(
            model_name='emdisfield',
            name='dict_field',
            field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.DictionaryField', verbose_name='WMDA Dictionary Field'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='emdisfield',
            name='emdis_type',
            field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.EmdisFieldType', verbose_name='field type'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='emdissemantics',
            name='emdis_field',
            field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.EmdisField'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='emdissemantics',
            name='emdis_message',
            field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.EmdisMessage'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='emdissemantics',
            name='required',
            field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.RequiredFieldType'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='formfields',
            name='dict_field',
            field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.DictionaryField', verbose_name='WMDA Dictionary Field'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='formfields',
            name='wmda_form',
            field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.PROTECT, to='wmdadict.WmdaForm'),
            preserve_default=False,
        ),
    ]