import django_filters

from .models import DictionaryField, EmdisField, EmdisMessage


class DictionaryFilter(django_filters.FilterSet):
    label = django_filters.CharFilter(lookup_expr='icontains')

    class Meta:
        model = DictionaryField
        fields = ['field_type', 'owner_family',]


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
