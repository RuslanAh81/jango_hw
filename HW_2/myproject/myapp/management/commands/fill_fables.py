from django.core.management.base import BaseCommand
from myapp.models import Customer, Product, Order, OrderItem

from random import shuffle, randint


class Command(BaseCommand):
    help = "Create customer."

    # def add_arguments(self, parser):
    #
    #     parser.add_argument('number', type=int, help='Number of customer')

    def handle(self, *args, **kwargs):
        number = 5
        arr = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
        for i in range(1, number + 1):
            shuffle(arr)
            phone = "".join(arr)
            customer = Customer(name=f'name{i}',
                            email=f'name{i}@mail.ru',
                            phone=f'7{phone}',
                            address=f'address{i}'
                            )
            customer.save()
            self.stdout.write(f'{customer}')

            price = randint(10, 101)
            quantity = randint(1, 11)
            product = Product(name=f'product{i}',
                              description=f'description{i}',
                              price=price,
                              quantity=quantity
                              )
            product.save()

            order = Order(customer_id=f'{i}')
            order.save()

        orders = Order.objects.all()
        products = Product.objects.all()
        for order in orders:
            for product in products:
                count = randint(1, number)
                order_item = OrderItem(order=order, product=product, product_number=count)
                order_item.save()