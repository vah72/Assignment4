from django.urls import path
from .views import *

app_name = 'checkout'

urlpatterns = [
    path('checkout/', checkout, name='checkout'),
] 