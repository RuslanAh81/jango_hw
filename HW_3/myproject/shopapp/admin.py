from django.contrib import admin
from . models import Client, Product, Order

# Register your models here.

# admin.site.register(models.Client)
# admin.site.register(models.Product)
# admin.site.register(models.Order)

@admin.register(Client)
class ClientAdmin(admin.ModelAdmin):
    list_display = ['name', 'email', 'address', 'date_registered']
    ordering = ['date_registered']
    list_filter = ['address', 'date_registered']

@admin.action(description="Обнулить количество товара")
def reset_quantity(modeladmin, request, queryset):
    queryset.update(quantity=0)

@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['name', 'price', 'quantity', 'date_added']
    ordering = ['name']
    list_filter = ['date_added']
    search_fields = ['name']
    search_help_text = 'Поиск по названию'
    actions = [reset_quantity]
    fieldsets = ((None, {'fields': ['name']}),
              ('описание товара', {'classes': ['collapse'], 'fields': ['description']}),
              ('склад', {'fields': ['price', 'quantity', 'date_added']}))
    readonly_fields = ['date_added']


@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    list_display = ['client', 'total_price', 'date_ordered']
    # ordering = ['total_price', 'date_ordered']
    list_filter = ['date_ordered']
    search_fields = ['date_ordered']
    search_help_text = 'Поиск по дате заказа'