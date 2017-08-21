from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render

from .models import DictionaryField, EmdisField, EmdisMessage
from .filters import DictionaryFilter, EmdisFieldFilter, EmdisMessageFilter

def index(request):
    return HttpResponse("Hello, world. You're at the WMDA Dictionary index.")

def dictionary_list(request):
    field_list = DictionaryField.objects.all()
    field_filter = DictionaryFilter(request.GET, queryset=field_list)
    return render(request, 'wmdadict/dictionary_list.html', {'dict_fields': field_filter})

def dictionary_detail(request, field_id):
    dfield = get_object_or_404(DictionaryField, pk=field_id)
    return render(request, 'wmdadict/dictionary_detail.html', {'dfield': dfield})

def emdis_list(request):
    emdis_fields = EmdisField.objects.all()
    field_filter = EmdisFieldFilter(request.GET, queryset=emdis_fields)
    return render(request, 'wmdadict/emdis_list.html', {'emdis_fields': field_filter})

def emdis_detail(request, field_id):
    efield = get_object_or_404(EmdisField, pk=field_id)
    return render(request, 'wmdadict/emdis_detail.html', {'efield': efield})

def emdis_msg_list(request):
    msg_fields = EmdisMessage.objects.all()
    msg_filter = EmdisMessageFilter(request.GET, queryset=msg_fields)
    return render(request, 'wmdadict/emdis_msg_list.html', {'msg_filter': msg_filter})

def emdis_msg_detail(request, msg_id):
    emsg = get_object_or_404(EmdisMessage, pk=msg_id)
    return render(request, 'wmdadict/emdis_msg_detail.html', {'emsg': emsg})
