from django.forms import ModelForm, Form
from . import models
from .models import Product, Client

class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields = ['name', 'description', 'price', 'quantity', 'image']


class ClientForm(ModelForm):
    class Meta:
        model = Client
        fields = ['name', 'email', 'phone', 'address']