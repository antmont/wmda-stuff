from django.db import models

from ordered_model.models import OrderedModel
# from markdownx.models import MarkdownxField


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
    values = models.TextField(max_length=200, blank=True)
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

    # @property
    # def sorted_field_set(self):
    #     return self.emdisfield_set.order_by('emdissemantics__order')

    def __str__(self):
        return self.name


class EmdisFieldType(models.Model):
    letter_code = models.CharField(max_length=1, unique=True)
    title = models.CharField(max_length=50)
    description = models.TextField(blank=True)

    class Meta:
        verbose_name = 'EMDIS field type'
        ordering = ['letter_code',]

    def __str__(self):
        return self.title


class EmdisField(models.Model):
    field_code = models.CharField(max_length=50, unique=True)
    field_description = models.CharField(max_length=500)
    emdis_type = models.ForeignKey(EmdisFieldType,
                                   verbose_name='field type',)
    field_length = models.PositiveIntegerField()
    field_rule = models.TextField()
    dict_field = models.ForeignKey(DictionaryField,
                                   verbose_name='WMDA Dictionary Field')
    emdis_messages = models.ManyToManyField(EmdisMessage,
                                            through='EmdisSemantics')

    class Meta:
        verbose_name = 'EMDIS field'
        ordering = ['field_code']

    def __str__(self):
        return self.field_code

class EmdisSemantics(OrderedModel):
    REQ_TYPES = (
        ('R', 'Required'),
        ('O', 'Optional'),
    )

    emdis_field = models.ForeignKey(EmdisField, on_delete=models.CASCADE)
    emdis_message = models.ForeignKey(EmdisMessage, on_delete=models.CASCADE)
    required = models.CharField(max_length=1, choices=REQ_TYPES, blank=True)
    order_with_respect_to = 'emdis_message'

    class Meta:
        ordering = ('emdis_message', 'order')


class BmdwField(models.Model):
    BMDW_REQ_TYPES = (
        ('Y', 'Yes'),
        ('N', 'No'),
        ('D', 'Dependent'),
    )
    field_identifier = models.CharField(max_length=50)
    element_type = models.CharField(max_length=50, blank=True)
    required = models.CharField(max_length=1, choices=BMDW_REQ_TYPES, blank=True)
    description = models.TextField(blank=True)
    type = models.CharField(max_length=50, blank=True)
    length = models.CharField(max_length=50, blank=True)
    comment = models.TextField(blank=True)
    dict_field = models.ForeignKey(DictionaryField,
                                   verbose_name='WMDA Dictionary Field',
                                   on_delete=models.SET_NULL,
                                   blank=True,
                                   null=True,)

    class Meta:
        verbose_name = 'BMDW field'

    def __str__(self):
        return self.field_identifier


class WmdaForm(models.Model):
    form_code = models.CharField(max_length=10, unique=True)
    description = models.CharField(max_length=200, blank=True)
    form_url = models.URLField(max_length=200, blank=True)
    fields = models.ManyToManyField(DictionaryField, through='FormFields')

    class Meta:
        verbose_name = 'WMDA form'

    def __str__(self):
        return self.form_code

class FormFields(OrderedModel):
    dict_field = models.ForeignKey(DictionaryField,
                                   verbose_name='WMDA Dictionary Field')
    wmda_form = models.ForeignKey(WmdaForm)
    form_field_name = models.CharField(max_length=200)
    order_with_respect_to = 'wmda_form'

    class Meta:
        verbose_name_plural = 'form fields'
        ordering = ('wmda_form', 'order')
