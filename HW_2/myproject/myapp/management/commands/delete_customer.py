from django.core.management.base import BaseCommand
from myapp.models import Customer


class Command(BaseCommand):
    help = "Delete customer by id."

    def handle(self, *args, **kwargs):
        def handle(self, *args, **kwargs):
            customer = Customer.objects.filter(id=3).delete()

            self.stdout.write(f'{customer}')