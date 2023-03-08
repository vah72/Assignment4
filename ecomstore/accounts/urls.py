from django.urls import path
from ecomstore import settings
from .views import *


urlpatterns = [
    path('register/', view=register, name='register'),
    path('my_account/', my_account, name='my_account'),
    path('order_details/<int:order_id>/', order_details, name='order_details'),
    path('order_info/', order_info, name='order_info'),

]


