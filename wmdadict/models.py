from django.db import models
# from django.utils import timezone
# import datetime

class DataFamily(models.Model):
    name = models.CharField(max_length=50, unique=True)
    contact = models.CharField(max_length=50, blank=True)

    class Meta:
        verbose_name_plural = 'data families'


    def __str__(self):
        return self.name


class DictionaryField(models.Model):
    FIELD_TYPES = (
        ('N', 'Numeric'),
        ('A', 'Alphanumeric'),
        ('S', 'List Single'),
        ('M', 'List Multiple'),
        ('D', 'Date'),
        ('F', 'Free Form'),
        ('U', 'Undecided'),
    )
    label = models.CharField(max_length=200, unique=True)
    description_short = models.CharField('Short Description', max_length=200)
    description_long = models.TextField('Long Description', blank=True)
    field_type = models.CharField(max_length=1, choices=FIELD_TYPES)
    units = models.CharField(max_length=200, blank=True)
    range = models.CharField(max_length=200, blank=True)
    values = models.CharField(max_length=200, blank=True)
    owner_family = models.ForeignKey(DataFamily,
                                     on_delete=models.CASCADE,
                                     related_name='owns')
    user_families = models.ManyToManyField(DataFamily,
                                         blank=True,
                                         related_name='uses')

    class Meta:
        ordering = ['label']

    def __str__(self):
        return self.label


class EmdisMessage(models.Model):
    name = models.CharField(max_length=50, unique=True)
    description = models.CharField(max_length=200)

    class Meta:
        verbose_name = 'EMDIS message'
        ordering = ['name']

    def __str__(self):
        return self.name


class EmdisField(models.Model):
    field_code = models.CharField(max_length=50, unique=True)
    field_description = models.CharField(max_length=200)
    field_type = models.CharField(max_length=10)
    field_rule = models.TextField()
    dict_field = models.ForeignKey(DictionaryField,
                                   verbose_name='WMDA Dictionary Field')
    emdis_messages = models.ManyToManyField(EmdisMessage)

    class Meta:
        verbose_name = 'EMDIS field'
        ordering = ['field_code']

    def __str__(self):
        return self.field_code


class BmdwField(models.Model):
    field_code = models.CharField(max_length=50, unique=True)
    dict_field = models.ForeignKey(DictionaryField,
                                   verbose_name='WMDA Dictionary Field')

    class Meta:
        verbose_name = 'BMDW field'

    def __str__(self):
        return self.field_code


class WmdaForm(models.Model):
    form_code = models.CharField(max_length=10, unique=True)
    description = models.CharField(max_length=200)
    fields = models.ManyToManyField(DictionaryField, through='FormFields')

    class Meta:
        verbose_name = 'WMDA form'

    def __str__(self):
        return self.form_code

class FormFields(models.Model):
    dict_field = models.ForeignKey(DictionaryField,
                                   verbose_name='WMDA Dictionary Field')
    wmda_form = models.ForeignKey(WmdaForm)
    form_field_name = models.CharField(max_length=200)

    class Meta:
        verbose_name_plural = 'form fields'