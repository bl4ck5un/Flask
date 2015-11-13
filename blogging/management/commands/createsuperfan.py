import os
from django.core.management.base import BaseCommand
from django.contrib.auth import get_user_model

# See django's implementation
# https://github.com/django/django/blob/master/django/contrib/auth/management/commands/createsuperuser.py

class Command(BaseCommand):
    def __init__(self, *args, **kwargs):
        super(Command, self).__init__(*args, **kwargs)
        self.UserModel = get_user_model()

    def handle(self, *args, **kwargs):
        username = 'fan'
        email = 'fan@fan.com'
        if not self.UserModel.objects.filter(username=username).exists():
            self.UserModel.objects.create_superuser(username, email, os.environ['SU_PASS'])

