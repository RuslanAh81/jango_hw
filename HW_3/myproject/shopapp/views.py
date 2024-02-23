import logging
from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404
from shopapp.models import Order, Client, OrderItem, Product
from datetime import timedelta
from django.utils import timezone
from . import forms


# Create your views here.
logger = logging.getLogger(__name__)

count1 = 1
count2 = 1


def index(request):
    global count1
    logger.info(f'{count1}-й успешный вход на главную страницу')
    count1 += 1
    return render(request, "index.html")


def about(request):
    global count2
    logger.info(f'{count2}-й успешный вход на страницу about')
    count2 += 1
    return render(request, "about.html")


def order(request, order_id):
    order = Order.objects.get(pk=order_id)
    products = '<br />'.join([f'Товар: {product.name} (Цена: {product.price})' for product in order.products.all()])
    return HttpResponse(f'<h2>Заказ №{order.id}</h2> Клиент: {order.client.name}, Итого: {order.total_price()}:<br>'
                        f'{products}<br>'
                        f'Заказ создан: {order.date_ordered}')


def orders(request):
    orders = Order.objects.all()
    orders_list = '<h2>Заказы</h2>'
    for order in orders:
        orders_list += (f'Заказ №{order.id} от: {order.date_ordered},  Клиент: {order.client.name},  '
                        f'Итого: {order.total_price()}<br />')
    return HttpResponse(orders_list)


# Показать все заказы клиента (по id клиента)
def show_all_client_orders(request, client_id):
    client = get_object_or_404(Client, pk=client_id)
    client_orders = Order.objects.filter(client=client)

    orders_products = []
    for order in client_orders:
        order_items = OrderItem.objects.filter(order=order)

        products_and_number_of_items = []
        for item in order_items:
            product = item.product
            number_of_items = item.product_number
            products_and_number_of_items.append((product, number_of_items))

        orders_products.append((order, products_and_number_of_items))

    context = {'orders_products': orders_products, 'client': client}
    return render(request, "all_client_orders.html", context)


# Показать все последние заказы клиента (по id клиента)
def show_last_client_orders(request, client_id):
    now = timezone.now()
    periods = {
        'week': now - timedelta(days=7),
        'month': now - timedelta(days=30),
        'year': now - timedelta(days=365),
    }
    orders_by_data = {}
    client = get_object_or_404(Client, pk=client_id)

    for period, start_time in periods.items():
        orders_by_data[period] = OrderItem.objects.filter(
            order__client=client,
            order__date_ordered__gte=start_time
        ).select_related('order', 'product').order_by('-order__date_ordered')

    context = {
        'orders_by_data': orders_by_data,
        'client': client
    }

    return render(request, "last_client_orders.html", context)


def create_product(request):
    if request.method == 'POST':
        form = forms.ProductForm(request.POST, request.FILES)
        message = 'Ошибка в данных'
        if form.is_valid():
            form.save()
            message = f'Товар создан'
            form = forms.ProductForm()
            #return render(request, "shop_app/create_product_form.html", {'form': form, 'message': message})
    else:
        form =forms.ProductForm()
        message = 'Создание нового товара'
    return render(request, 'create_product_form.html', {'form': form, 'message': message})

def form(request):
    form_for_client = forms.ClientForm
    form_for_product = forms.ProductForm
    context = {
        'form_for_client': form_for_client,
        'form_for_product': form_for_product
    }
    return render(request, 'create_client_form.html', context)

def add_client(request):
    form = forms.ClientForm(request.POST)
    result = "Покупатель успешно добавлен %s" %request.path
    if request.method == "POST":
        if form.is_valid():
            data = form.cleaned_data
            form.save()
            print(data['name'])
            return HttpResponse("Покупатель добавлен %s" %request.path)

def product_add(request):
    form = forms.ProductForm(request.POST)
    if request.method == "POST" and form.is_valid():
        data = form.cleaned_data
        form = form.save()
        return HttpResponse("Продукт добавлен")
