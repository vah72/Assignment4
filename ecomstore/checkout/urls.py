from django.urls import path
from .views import *



urlpatterns = [
    path('show_checkout/', show_checkout, name='checkout'),
    path('receipt/', receipt, name='checkout_receipt'),
] 