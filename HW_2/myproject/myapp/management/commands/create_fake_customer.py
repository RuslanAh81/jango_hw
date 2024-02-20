from django.core.management.base import BaseCommand
from myapp.models import Product, Customer, Order
import random

class Command(BaseCommand):
    help = "Generate fake customer"

    # def add_arguments(self, parser):
    #     parser.add_argument('count', type=int, help='quantity of fake customer')

    def handle(self, *args, **kwargs):
        count = 5
        name = ['Андрей', 'Кирилл', 'Матвей', 'Дмитрий', 'Даниил', 'Максим', 'Артём', 'Александр', 'Анастасия', 'Дарья',
                'Мария', 'Виктория', 'Екатерина', 'Ксения']
        customers_ = []
        products_ = []
        orders_ = []

        for i in range(1, count + 1):
            customer = customer(name=f'{random.choice(name)}',
                            email=f'email{i}@mail.ru',
                            phone=f'{random.randint(89510000000, 89518888888)}',
                            address=f'address{i}')
            customer.save()
            customers_.append(customer)