from django.db import models
from django.contrib.auth.models import User
from checkout.models import BaseOrderInfo
from django.db.models.signals import post_save


class UserProfile(BaseOrderInfo):
    user = models.OneToOneField(User, unique=True, on_delete=models.CASCADE, related_name='profile')

    def __str__(self):
        return 'User Profile for: ' + self.user.username
    
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        UserProfile.objects.create(user=instance)

post_save.connect(create_user_profile, sender=User)
