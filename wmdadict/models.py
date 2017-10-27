from django.db import models

from ordered_model.models import OrderedModel
# from markdownx.models import MarkdownxField

#
# Helper models
#

class DataFamily(models.Model):
    name = models.CharField(max_length=50, unique=True)
    contact = models.CharField(max_length=50, blank=True,
            help_text="Formatting and newlines will not be displayed.")

    class Meta:
        verbose_name_plural = 'data families'

    def __str__(self):
        return self.name


class DictionaryFieldType(models.Model):
    title = models.CharField(max_length=50)
    description = models.TextField(blank=True)
    has_units = models.BooleanField()
    has_range = models.BooleanField()
    has_values = models.BooleanField()

    class Meta:
        ordering = ['title',]

    def __str__(self):
        return self.title


class EmdisFieldType(models.Model):
    letter_code = models.CharField(max_length=1, unique=True)
    title = models.CharField(max_length=50)
    description = models.TextField(blank=True,
        help_text="Formatting and newlines will not be displayed.")

    class Meta:
        verbose_name = 'EMDIS field type'
        ordering = ['letter_code',]

    def __str__(self):
        return self.title


class RequiredFieldType(models.Model):
    emdis_label = models.CharField(max_length=30)
    bmdw_label = models.CharField(max_length=30)
    description = models.TextField(blank=True)
    display_strong = models.BooleanField()

    def __str__(self):
        return '/'.join([self.emdis_label, self.bmdw_label,])


class BmdwElementType(models.Model):
    title = models.CharField(max_length=50)
    description = models.TextField(blank=True,
        help_text="Formatting and newlines will not be displayed.")

    class Meta:
        verbose_name = 'BMDW element type'
        ordering = ['title',]

    def __str__(self):
        return self.title


class BmdwFieldType(models.Model):
    title = models.CharField(max_length=50)
    description = models.TextField(blank=True,
        help_text="Formatting and newlines will not be displayed.")

    class Meta:
        verbose_name = 'BMDW field type'
        ordering = ['title',]

    def __str__(self):
        return self.title


#
# Primary Data Dictionary models
#

class DictionaryField(models.Model):
    label = models.CharField(max_length=200, unique=True)
    description_short = models.CharField('Short Description', max_length=200)
    description_long = models.TextField('Long Description', blank=True)
    field_type = models.ForeignKey(DictionaryFieldType,
                                   on_delete=models.PROTECT,)
    units = models.CharField(max_length=200, blank=True)
    range = models.CharField(max_length=200, blank=True)
    values = models.TextField(max_length=1000, blank=True)
    owner_family = models.ForeignKey(DataFamily,
                                     on_delete=models.PROTECT,
                                     related_name='owns',)
    user_families = models.ManyToManyField(DataFamily,
                                           blank=True,
                                           related_name='uses',)

    class Meta:
        ordering = ['label']

    def __str__(self):
        return self.label


class EmdisMessage(models.Model):
    name = models.CharField(max_length=50, unique=True)
    description = models.CharField(max_length=200)
    pre_text = models.TextField(max_length=10000, blank=True)
    post_text = models.TextField(max_length=10000, blank=True)

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
                                   on_delete=models.PROTECT,
                                   verbose_name='field type',)
    field_length = models.PositiveIntegerField()
    field_rule = models.TextField()
    dict_field = models.ForeignKey(DictionaryField,
                                   on_delete=models.PROTECT,
                                   verbose_name='WMDA Dictionary Field')
    emdis_messages = models.ManyToManyField(EmdisMessage,
                                            through='EmdisSemantics')

    class Meta:
        verbose_name = 'EMDIS field'
        ordering = ['field_code']

    def __str__(self):
        return self.field_code


class EmdisSemantics(OrderedModel):
    emdis_field = models.ForeignKey(EmdisField,
                                    on_delete=models.PROTECT,)
    emdis_message = models.ForeignKey(EmdisMessage,
                                      on_delete=models.PROTECT,)
    required = models.ForeignKey(RequiredFieldType,
                                 on_delete=models.PROTECT,)

    order_with_respect_to = 'emdis_message'

    class Meta(OrderedModel.Meta):
        ordering = ('emdis_message', 'order')


class BmdwField(models.Model):
    field_identifier = models.CharField(max_length=50)
    element_type = models.ForeignKey(BmdwElementType,
                                         on_delete=models.PROTECT,)
    required = models.ForeignKey(RequiredFieldType,
                                 on_delete=models.PROTECT,)
    description = models.TextField(blank=True)
    type = models.ForeignKey(BmdwFieldType,
                             on_delete=models.PROTECT,)
    length = models.CharField(max_length=50, blank=True)
    comment = models.TextField(blank=True)
    dict_field = models.ForeignKey(DictionaryField,
                                   verbose_name='WMDA Dictionary Field',
                                   on_delete=models.PROTECT,)

    class Meta:
        verbose_name = 'BMDW field'
        ordering = ('element_type', 'field_identifier',)

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
                                   on_delete=models.PROTECT,
                                   verbose_name='WMDA Dictionary Field')
    wmda_form = models.ForeignKey(WmdaForm,
                                  on_delete=models.PROTECT,)
    form_field_name = models.CharField(max_length=200)
    form_field_current_name = models.CharField(max_length=200, blank=True)
    order_with_respect_to = 'wmda_form'

    class Meta:
        verbose_name_plural = 'form fields'
        ordering = ('wmda_form', 'order')
