from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render

from .models import DictionaryField, EmdisField

def index(request):
    return HttpResponse("Hello, world. You're at the WMDA Dictionary index.")

def dictionary_list(request):
    dict_fields = DictionaryField.objects.all()
    context = {'dict_fields': dict_fields}
    return render(request, 'wmdadict/dictionary_list.html', context)

def dictionary_detail(request, field_id):
    dfield = get_object_or_404(DictionaryField, pk=field_id)
    return render(request, 'wmdadict/dictionary_detail.html', {'dfield': dfield})

def emdis_list(request):
    return HttpResponse("You're at the EMDIS field list.")

def emdis_detail(request, field_id):
    response = "You're looking at the details of EMDIS field %s."
    return HttpResponse(response % field_id)
