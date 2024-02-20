from django.core.management import BaseCommand
from myapp.models import Customer


class Command(BaseCommand):
    help = "Get client by id."

    # def add_arguments(self, parser):
    #     parser.add_argument('id', type=int, help='Client ID')

    def handle(self, *args, **kwargs):
        id = kwargs.get('id')
        customer = Customer.objects.get(id=id)
        self.stdout.write(f'{customer}')