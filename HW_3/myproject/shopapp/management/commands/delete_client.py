from django.core.management.base import BaseCommand
from shopapp.models import Client

class Command(BaseCommand):
    def handle(self, *args, **kwargs):

        client = Client.objects.filter(id=3).delete()


        self.stdout.write(f'{client}')