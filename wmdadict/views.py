from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render

from markdownx.utils import markdownify

from .models import DictionaryField, EmdisField, EmdisMessage
from .models import BmdwField, WmdaForm
from .filters import DictionaryFilter, EmdisFieldFilter, EmdisMessageFilter
from .filters import BmdwFieldFilter, WmdaFormFilter

# def index(request):
#     return HttpResponse("Hello, world. You're at the WMDA Dictionary index.")

def dictionary_list(request):
    dictionaryfields = DictionaryField.objects.all()
    field_filter = DictionaryFilter(request.GET, queryset=dictionaryfields)
    if any(v != '' for v in request.GET.dict().values()):
        filter_active = True
    else:
        filter_active = False
    filter_context = {'filter_active': filter_active}
    return render(request, 'wmdadict/dictionary_list.html',
                                {'dict_fields': field_filter,
                                 'filter_context': filter_context})

def dictionary_detail(request, field_id):
    dictionaryfield = get_object_or_404(DictionaryField, pk=field_id)
    dictionaryfield.description_long = markdownify(dictionaryfield.description_long)
    if dictionaryfield.values:
        dictionaryfield.values = markdownify(dictionaryfield.values)
    forms = dictionaryfield.formfields_set.all().distinct('wmda_form')
    return render(request,
                  'wmdadict/dictionary_detail.html',
                  {'dfield': dictionaryfield,
                   'forms': forms})

def emdis_list(request):
    emdis_fields = EmdisField.objects.all()
    field_filter = EmdisFieldFilter(request.GET, queryset=emdis_fields)
    if any(v != '' for v in request.GET.dict().values()):
        filter_active = True
    else:
        filter_active = False
    filter_context = {'filter_active': filter_active}

    return render(request,
                  'wmdadict/emdis_list.html',
                  {'emdis_fields': field_filter,
                  'filter_context': filter_context})

def emdis_detail(request, field_id):
    emdisfield = get_object_or_404(EmdisField, pk=field_id)
    emdisfield.field_rule = markdownify(emdisfield.field_rule)
    return render(request, 'wmdadict/emdis_detail.html', {'efield': emdisfield})

def emdis_msg_list(request):
    msg_fields = EmdisMessage.objects.all()
    msg_filter = EmdisMessageFilter(request.GET, queryset=msg_fields)
    if any(v != '' for v in request.GET.dict().values()):
        filter_active = True
    else:
        filter_active = False
    filter_context = {'filter_active': filter_active}
    return render(request,
                 'wmdadict/emdis_msg_list.html',
                 {'msg_filter': msg_filter,
                 'filter_context': filter_context})

def emdis_msg_detail(request, msg_id):
    emsg = get_object_or_404(EmdisMessage, pk=msg_id)
    if emsg.pre_text:
        emsg.pre_text = markdownify(emsg.pre_text)
    if emsg.post_text:
            emsg.post_text = markdownify(emsg.post_text)
    return render(request, 'wmdadict/emdis_msg_detail.html', {'emsg': emsg})

def bmdw_list(request):
    bmdwfields = BmdwField.objects.all()
    bmdwfilter = BmdwFieldFilter(request.GET, queryset=bmdwfields)
    if any(v != '' for v in request.GET.dict().values()):
        filter_active = True
    else:
        filter_active = False
    filter_context = {'filter_active': filter_active}
    return render(request,
                  'wmdadict/bmdw_list.html',
                  {'bmdwfilter': bmdwfilter,
                  'filter_context': filter_context})

def bmdw_detail(request, field_id):
    bmdwfield = get_object_or_404(BmdwField, pk=field_id)
    bmdwfield.description = markdownify(bmdwfield.description)
    bmdwfield.comment = markdownify(bmdwfield.comment)
    return render(request, 'wmdadict/bmdw_detail.html', {'bmdwfield': bmdwfield})

def form_list(request):
    wmdaforms = WmdaForm.objects.all()
    formfilter = WmdaFormFilter(request.GET, queryset=wmdaforms)
    if any(v != '' for v in request.GET.dict().values()):
        filter_active = True
    else:
        filter_active = False
    filter_context = {'filter_active': filter_active}
    return render(request,
                  'wmdadict/form_list.html',
                  {'formfilter': formfilter,
                   'filter_context': filter_context})

def form_detail(request, field_id):
    wmdaform = get_object_or_404(WmdaForm, pk=field_id)
    return render(request, 'wmdadict/form_detail.html', {'wmdaform': wmdaform})
