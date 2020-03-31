from .models import pp
from django import forms



from django.forms import ModelMultipleChoiceField

from crispy_forms.helper import FormHelper


class theForm(forms.ModelForm):
	#helper=FormHelper()
	#helper.form_show_labels= False
	Country1 = forms.ModelChoiceField(queryset=pp.objects.all(), to_field_name='Name', label= 'From Country')
	Amount= forms.FloatField(label='Amount')
	Country2 = forms.ModelChoiceField(queryset=pp.objects.all(), to_field_name='Name', label='To Country')
	class Meta:
		model=pp
		fields=[]
