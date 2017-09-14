from django.contrib import admin
from django.contrib.admin import AdminSite

from ordered_model.admin import OrderedTabularInline
from markdownx.widgets import AdminMarkdownxWidget

from .models import *

class WMDAAdminSite(AdminSite):
    site_header = 'WMDA Dictionary Administration'
    site_title = 'WMDA Dict Admin'


class DictionaryFieldAdmin(admin.ModelAdmin):
    list_display = ('label', 'description_short', 'owner_family',
                    'field_type_new',)
    search_fields = ('label', 'description_short', 'description_long',)
    list_filter = ('owner_family', 'user_families',)
    formfield_overrides = {
        models.TextField: {'widget': AdminMarkdownxWidget},
    }
#    filter_horizontal = ('user_families',)


class FieldTypeAdmin(admin.ModelAdmin):
    list_display = ('letter_code', 'title',)


class EmdisFieldAdmin(admin.ModelAdmin):
    list_display = ('field_code', 'field_description',)
    search_fields = ('field_code', 'field_description', 'dict_field__label',)
    list_filter = ('emdis_messages', 'dict_field__owner_family',)
    filter_horizontal = ('emdis_messages',)
    formfield_overrides = {
        models.TextField: {'widget': AdminMarkdownxWidget},
    }


class EmdisSemanticsInline(OrderedTabularInline):
    model = EmdisSemantics
    fields = ('emdis_message', 'emdis_field', 'required_new', 'move_up_down_links',)
    readonly_fields = ('order', 'move_up_down_links',)
    extra = 1
    ordering = ('order',)


class EmdisMessageAdmin(admin.ModelAdmin):
    list_display = ('name', 'description',)
    inlines = (EmdisSemanticsInline, )

    def get_urls(self):
        urls = super(EmdisMessageAdmin, self).get_urls()
        for inline in self.inlines:
            if hasattr(inline, 'get_urls'):
                urls = inline.get_urls(self) + urls
        return urls


class BmdwFieldAdmin(admin.ModelAdmin):
    list_display = ('field_identifier', 'description', 'type', 'type_new',)
    search_fields = ('field_identifier', 'description', 'dict_field__label',)
    list_filter = ('element_type',)
    formfield_overrides = {
        models.TextField: {'widget': AdminMarkdownxWidget},
    }


class FormFieldsInline(OrderedTabularInline):
    model = FormFields
    fields = ('dict_field', 'wmda_form', 'form_field_name', 'move_up_down_links',)
    readonly_fields = ('order', 'move_up_down_links',)
    extra = 1
    ordering = ('order',)


class WmdaFormAdmin(admin.ModelAdmin):
    list_display = ('form_code', 'description',)
    inlines = (FormFieldsInline, )

    def get_urls(self):
        urls = super(WmdaFormAdmin, self).get_urls()
        for inline in self.inlines:
            if hasattr(inline, 'get_urls'):
                urls = inline.get_urls(self) + urls
        return urls

wmda_admin_site = WMDAAdminSite(name='wmdaadmin')
wmda_admin_site.register(DictionaryField, DictionaryFieldAdmin)
wmda_admin_site.register(EmdisField, EmdisFieldAdmin)
wmda_admin_site.register(EmdisMessage, EmdisMessageAdmin)
wmda_admin_site.register(BmdwField, BmdwFieldAdmin)
wmda_admin_site.register(WmdaForm, WmdaFormAdmin)
wmda_admin_site.register(DataFamily)
wmda_admin_site.register(EmdisFieldType, FieldTypeAdmin)
wmda_admin_site.register(DictionaryFieldType, FieldTypeAdmin)
wmda_admin_site.register(RequiredFieldType)
wmda_admin_site.register(BmdwElementType)
wmda_admin_site.register(BmdwFieldType)
