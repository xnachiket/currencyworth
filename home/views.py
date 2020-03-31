from django.shortcuts import render,redirect
from home.models import pp
from django.views.generic import View
from .forms import theForm
from django.forms import ModelChoiceField

# Create your views here.

def dis(request):
    modelk = pp.objects.all()  #okay tar, modelk madhe 'pp' ya model madhle all objects jatat, mhanjech tables
    return render(request,"home/home.html",{'cro':modelk}) #modelk cro chya jagi replace hoils

  #cro the variable to store pp's stuff and wheever cro is curnt gets in


def theFormView(request):
	if request.method == 'POST':
		form= theForm(request.POST or None)
		final=0
		if form.is_valid():
			form.save()
			cuntr1 = request.POST.get('Country1')
			cuntr2 = request.POST.get('Country2')
			amt=request.POST.get('Amount')
			valc1 = float((pp.objects.get(Name=cuntr1)).Value)
			valc2 =float((pp.objects.get(Name=cuntr2)).Value)
			final = round(((valc2/valc1)*float(amt)),2)
			cur1=str((pp.objects.get(Name=cuntr1)).Currency)
			cur2=str((pp.objects.get(Name=cuntr2)).Currency)
			cleaned_data={'final':final,'cur1':cur1,'cur2':cur2,'amt':amt,'cuntr1':cuntr1,'cuntr2' : cuntr2,     
'str1':'in','str2':'would be worth'}
  
       
           
			return render(request,'home/home.html',{'form_data':cleaned_data, "form" : form })


			
	else:
		form=theForm()
	context = { 'form' : form }
	return render(request,"home/home.html",context)