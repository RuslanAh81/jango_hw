from django.db import models

# Create your models here.


class Customer(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField()
    phone = models.IntegerField()
    address = models.CharField(max_length=200, null=True)
    date_registration = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return f'{self.name}, {self.email}, {self.date_registration}'


class Product(models.Model):
    name = models.CharField(max_length=200, null=True)
    description = models.CharField(max_length=200, null=True)
    price = models.DecimalField(max_digits=8, decimal_places=2)
    count = models.IntegerField()
    date_added = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f'{self.name}, цена: {self.price}, количество: {self.count}'


class Order(models.Model):
    customer = models.ForeignKey(Customer, on_delete=models.CASCADE)
    products = models.ManyToManyField(Product, through='OrderItem', through_fields=('order', 'product'))
    date_ordered = models.DateTimeField(auto_now_add=True)

    def total_price(self):
        total = 0
        for item in self.orderitem_set.all():
            total += item.product.price * item.product_number
        return total

    def __str__(self):
        return f'Order: {self.id}, Customer: {self.customer.name}, Date: {self.date_ordered}'


# Создаем связь с дополнительными данным (количество каждого товара в заказе)
# между Order и Product
class OrderItem(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    product_number = models.IntegerField(default=1)

    def __str__(self):
        return f'Order {self.order.id}: {self.product.name} - {self.product_number}шт.'
