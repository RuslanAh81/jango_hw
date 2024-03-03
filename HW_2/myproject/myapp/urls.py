from django.urls import path
from django.urls import path, include
from . import views


urlpatterns = [
    path('', views.index, name='index'),
    path('about/', views.about, name='about'),
    path('order/<int:order_id>/', views.order, name='order'),
    path('orders/', views.orders, name='all_orders'),
    path('all_customer_orders/<int:customer_id>', views.show_all_customer_orders, name='show_all_customer_orders'),
    path('last_customer_orders/<int:customer_id>', views.show_last_customer_orders, name='show_last_customer_orders'),
]