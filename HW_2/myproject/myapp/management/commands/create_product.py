from django.core.management.base import BaseCommand, CommandParser
from HW_2.myproject.myapp.models import Product


class Command(BaseCommand):
    help = "Create new product"

    def add_arguments(self, parser: CommandParser) ->None:
        parser.add_argument('name', type=str, help='Product name')
        parser.add_argument('description', type=str, help='Product description')
        parser.add_argument('price', type=float, help='Product price')
        parser.add_argument('count', type=int, help='Product count')

    def handle(self, *args, **kwargs):
        name, description, price, count = kwargs['name'], kwargs['description'], kwargs['price'], kwargs['count']
        product = Product(name=name, description=description, price=price, count=count)
        product.save()
        self.stdout.write(f'{product}')