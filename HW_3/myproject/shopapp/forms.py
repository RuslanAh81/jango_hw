from django.forms import ModelForm, Form
from . import models
from .models import Product, Client
from django import forms

class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields = ['name', 'description', 'price', 'quantity', 'image']


class ClientForm(ModelForm):
    class Meta:
        model = Client
        fields = ['name', 'email', 'phone', 'address']



class EditProductForm(forms.ModelForm):
    name = forms.CharField(label='название', max_length=30, widget=forms.TextInput(attrs={'size':41} ))
    description = forms.CharField(label='описание', widget=forms.Textarea(attrs={'cols': 41, 'rows': 8}))
    price = forms.DecimalField(label='цена', decimal_places=2, max_digits=8, min_value=1)
    quantity = forms.IntegerField(label='количество', min_value=1)
    image = forms.ImageField(required=False)

    class Meta:
        model = Product
        fields = ['name', 'description', 'price', 'quantity', 'image']