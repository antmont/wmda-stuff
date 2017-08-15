from django.contrib import admin

from .models import *

class FormFieldsAdmin(admin.ModelAdmin):
    verbose_name_plural = 'Form fields'

class DataFamilyAdmin(admin.ModelAdmin):
    verbose_name_plural = 'Data families'

class DictionaryFieldAdmin(admin.ModelAdmin):
    list_display = ('label', 'field_type', 'owner_family')
    search_fields = ('label', 'description_short', 'description_long')
    list_filter = ('owner_family', 'user_families')
#    filter_horizontal = ('user_families',)

admin.site.register(DataFamily, DataFamilyAdmin)
admin.site.register(DictionaryField, DictionaryFieldAdmin)
admin.site.register(EmdisMessage)
admin.site.register(EmdisField)
admin.site.register(BmdwField)
admin.site.register(WmdaForm)
admin.site.register(FormFields, FormFieldsAdmin)
