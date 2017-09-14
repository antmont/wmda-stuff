import django_filters

from .models import DictionaryField, EmdisField, EmdisMessage, BmdwField
from .models import WmdaForm, FormFields

class DictionaryFilter(django_filters.FilterSet):
    label = django_filters.CharFilter(lookup_expr='icontains')

    class Meta:
        model = DictionaryField
        fields = ['field_type_new', 'owner_family',]


class EmdisFieldFilter(django_filters.FilterSet):
    field_code = django_filters.CharFilter(name='field_code',
                                           lookup_expr='icontains',
                                           )
    dict_field = django_filters.CharFilter(name='dict_field__label',
                                           lookup_expr='icontains')
    emdis_messages = django_filters.ModelChoiceFilter(
                        name='emdis_messages',
                        queryset=EmdisMessage.objects.all(),)

    class Meta:
        model = EmdisField
        fields = ['emdis_messages', ]


class EmdisMessageFilter(django_filters.FilterSet):
    name = django_filters.CharFilter(name='name',
                                     lookup_expr='icontains')
    description = django_filters.CharFilter(name='description',
                                           lookup_expr='icontains')
    # emdis_fields = django_filters.ModelChoiceFilter(
    #                     name='emdis_fields',
    #                     queryset=EmdisMessage.emdisfield_set)

    class Meta:
        model = EmdisMessage
        fields = ['name', 'description',]


class BmdwFieldFilter(django_filters.FilterSet):
    field_identifier = django_filters.CharFilter(name='field_identifier',
                                                 lookup_expr='icontains',
                                                )
    dict_field = django_filters.CharFilter(name='dict_field__label',
                                           lookup_expr='icontains')
    type = django_filters.CharFilter(name='type',
                                     lookup_expr='icontains')
    # Out of interest:
    # the following code gets a nice list of Types in a dropdown but doesn't
    # return any results.
    # type = django_filters.ModelChoiceFilter(name='type',
    #                                         queryset=BmdwField.objects.order_by('type').values_list('type', ).distinct(),)

    class Meta:
        model = BmdwField
        fields = ['field_identifier', 'dict_field', 'type',]


class WmdaFormFilter(django_filters.FilterSet):
    form_code = django_filters.CharFilter(name='form_code',
                                          lookup_expr='icontains')
    description = django_filters.CharFilter(name='description',
                                           lookup_expr='icontains')
    dict_field = django_filters.ModelChoiceFilter(
                        name='fields',
                        label='Uses dictionary field',
                        queryset=DictionaryField.objects.all())
    # emdis_fields = django_filters.ModelChoiceFilter(
    #                     name='emdis_fields',
    #                     queryset=EmdisMessage.emdisfield_set)

    class Meta:
        model = WmdaForm
        fields = ['form_code', 'description', 'dict_field',]
