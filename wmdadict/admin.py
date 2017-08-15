from django.contrib import admin

from .models import *

class FormFieldsAdmin(admin.ModelAdmin):
    verbose_name_plural = 'Form fields'

class DataFamilyAdmin(admin.ModelAdmin):
    verbose_name_plural = 'Data families'

admin.site.register(DataFamily, DataFamilyAdmin)
admin.site.register(DictionaryField)
admin.site.register(EmdisMessage)
admin.site.register(EmdisField)
admin.site.register(BmdwField)
admin.site.register(WmdaForm)
admin.site.register(FormFields, FormFieldsAdmin)
