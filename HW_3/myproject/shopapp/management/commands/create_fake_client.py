from django.core.management.base import BaseCommand
from shopapp.models import Product, Client, Order
import random

class Command(BaseCommand):
    help = "Generate fake clent"

    # def add_arguments(self, parser):
    #     parser.add_argument('count', type=int, help='quantity of fake clients')

    def handle(self, *args, **kwargs):
        count = 5
        name = ['Андрей', 'Кирилл', 'Матвей', 'Дмитрий', 'Даниил', 'Максим', 'Артём', 'Александр', 'Анастасия', 'Дарья',
                'Мария', 'Виктория', 'Екатерина', 'Ксения']
        clients_ = []
        products_ = []
        orders_ = []

        for i in range(1, count + 1):
            client = Client(name=f'{random.choice(name)}',
                            email=f'email{i}@mail.ru',
                            phone=f'{random.randint(89510000000, 89518888888)}',
                            address=f'address{i}')
            client.save()
            clients_.append(client)