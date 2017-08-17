from django.contrib import admin

from .models import *



class DictionaryFieldAdmin(admin.ModelAdmin):
    list_display = ('label', 'description_short', 'owner_family')
    search_fields = ('label', 'description_short', 'description_long')
    list_filter = ('owner_family', 'user_families')
#    filter_horizontal = ('user_families',)

class EmdisFieldAdmin(admin.ModelAdmin):
    list_display = ('field_code', 'field_description')
    search_fields = ('field_code', 'field_description', 'dict_field__label')
    list_filter = ('emdis_messages', )
    filter_horizontal = ('emdis_messages', )

admin.site.register(DataFamily)
admin.site.register(DictionaryField, DictionaryFieldAdmin)
admin.site.register(EmdisMessage)
admin.site.register(EmdisField, EmdisFieldAdmin)
admin.site.register(BmdwField)
admin.site.register(WmdaForm)
admin.site.register(FormFields)
