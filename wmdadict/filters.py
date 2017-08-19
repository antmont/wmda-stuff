import django_filters

from .models import DictionaryField, EmdisField, EmdisMessage

class DictionaryFilter(django_filters.FilterSet):
    label = django_filters.CharFilter(lookup_expr='icontains')

    class Meta:
        model = DictionaryField
        fields = ['field_type', 'owner_family',]


class EmdisFieldFilter(django_filters.FilterSet):
    field_code = django_filters.CharFilter(lookup_expr='icontains')
    dict_field = django_filters.CharFilter(lookup_expr='icontains')
    emdis_messages = django_filters.ModelChoiceFilter(
                        name='emdis_messages',
                        queryset=EmdisMessage.objects.all(),)

    class Meta:
        model = EmdisField
        fields = ['emdis_messages', ]
