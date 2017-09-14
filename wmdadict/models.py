from django.db import models

from ordered_model.models import OrderedModel
# from markdownx.models import MarkdownxField

#
# Helper models
#

class DataFamily(models.Model):
    name = models.CharField(max_length=50, unique=True)
    contact = models.CharField(max_length=50, blank=True)

    class Meta:
        verbose_name_plural = 'data families'

    def __str__(self):
        return self.name


class DictionaryFieldType(models.Model):
    title = models.CharField(max_length=50)
    description = models.TextField(blank=True)

    class Meta:
        ordering = ['title',]

    def __str__(self):
        return self.title


class EmdisFieldType(models.Model):
    letter_code = models.CharField(max_length=1, unique=True)
    title = models.CharField(max_length=50)
    description = models.TextField(blank=True)

    class Meta:
        verbose_name = 'EMDIS field type'
        ordering = ['letter_code',]

    def __str__(self):
        return self.title


class RequiredFieldType(models.Model):
    letter_code = models.CharField(max_length=1, unique=True)
    emdis_label = models.CharField(max_length=30)
    bmdw_label = models.CharField(max_length=30)
    description = models.TextField(blank=True)

    class Meta:
        ordering = ['letter_code',]

    def __str__(self):
        return '/'.join([self.emdis_label, self.bmdw_label,])


class BmdwElementType(models.Model):
    title = models.CharField(max_length=50)
    description = models.TextField(blank=True)

    class Meta:
        verbose_name = 'BMDW element type'
        ordering = ['title',]

    def __str__(self):
        return self.title


class BmdwFieldType(models.Model):
    title = models.CharField(max_length=50)
    description = models.TextField(blank=True)

    class Meta:
        verbose_name = 'BMDW field type'
        ordering = ['title',]

    def __str__(self):
        return self.title


#
# Primary Data Dictionary models
#

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
    field_type_old = models.CharField(max_length=1, choices=FIELD_TYPES)
    field_type = models.ForeignKey(DictionaryFieldType,
                                   on_delete=models.SET_NULL,
                                   blank=True,
                                   null=True)
    units = models.CharField(max_length=200, blank=True)
    range = models.CharField(max_length=200, blank=True)
    values = models.TextField(max_length=200, blank=True)
    owner_family = models.ForeignKey(DataFamily,
                                     on_delete=models.SET_NULL,
                                     blank=True,
                                     null=True,
                                     related_name='owns')
    user_families = models.ManyToManyField(DataFamily,
                                           blank=True,
                                           null=True,
                                           related_name='uses')

    class Meta:
        ordering = ['label']

    def __str__(self):
        return self.label


class EmdisMessage(models.Model):
    name = models.CharField(max_length=50, unique=True)
    description = models.CharField(max_length=200)
    pre_text = models.TextField(max_length=1000, blank=True)
    post_text = models.TextField(max_length=1000, blank=True)

    class Meta:
        verbose_name = 'EMDIS message'
        ordering = ['name']

    # @property
    # def sorted_field_set(self):
    #     return self.emdisfield_set.order_by('emdissemantics__order')

    def __str__(self):
        return self.name


class EmdisField(models.Model):
    field_code = models.CharField(max_length=50, unique=True)
    field_description = models.CharField(max_length=500)
    emdis_type = models.ForeignKey(EmdisFieldType,
                                   on_delete=models.SET_NULL,
                                   blank=True,
                                   null=True,
                                   verbose_name='field type',)
    field_length = models.PositiveIntegerField()
    field_rule = models.TextField()
    dict_field = models.ForeignKey(DictionaryField,
                                   on_delete=models.SET_NULL,
                                   blank=True,
                                   null=True,
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

    emdis_field = models.ForeignKey(EmdisField,
                                    on_delete=models.SET_NULL,
                                    blank=True,
                                    null=True,)
    emdis_message = models.ForeignKey(EmdisMessage,
                                      on_delete=models.SET_NULL,
                                      blank=True,
                                      null=True,)
    required_old = models.CharField(max_length=1, choices=REQ_TYPES, blank=True)
    required = models.ForeignKey(RequiredFieldType,
                                 on_delete=models.SET_NULL,
                                 blank=True,
                                 null=True,)

    order_with_respect_to = 'emdis_message'

    class Meta(OrderedModel.Meta):
        ordering = ('emdis_message', 'order')


class BmdwField(models.Model):
    BMDW_REQ_TYPES = (
        ('Y', 'Yes'),
        ('N', 'No'),
        ('D', 'Dependent'),
    )
    field_identifier = models.CharField(max_length=50)
    element_type_old = models.CharField(max_length=50, blank=True)
    element_type = models.ForeignKey(BmdwElementType,
                                         on_delete=models.SET_NULL,
                                         blank=True,
                                         null=True,)
    required_old = models.CharField(max_length=1, choices=BMDW_REQ_TYPES, blank=True)
    required = models.ForeignKey(RequiredFieldType,
                                    on_delete=models.SET_NULL,
                                    blank=True,
                                    null=True,)
    description = models.TextField(blank=True)
    type_old = models.CharField(max_length=50, blank=True)
    type = models.ForeignKey(BmdwFieldType,
                             on_delete=models.SET_NULL,
                             blank=True,
                             null=True,)
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
    fields = models.ManyToManyField(DictionaryField,
                                    through='FormFields')

    class Meta:
        verbose_name = 'WMDA form'

    def __str__(self):
        return self.form_code


class FormFields(OrderedModel):
    dict_field = models.ForeignKey(DictionaryField,
                                   on_delete=models.SET_NULL,
                                   blank=True,
                                   null=True,
                                   verbose_name='WMDA Dictionary Field')
    wmda_form = models.ForeignKey(WmdaForm,
                                  on_delete=models.SET_NULL,
                                  blank=True,
                                  null=True,)
    form_field_name = models.CharField(max_length=200)
    form_field_current_name = models.CharField(max_length=200, blank=True)
    order_with_respect_to = 'wmda_form'

    class Meta:
        verbose_name_plural = 'form fields'
        ordering = ('wmda_form', 'order')
