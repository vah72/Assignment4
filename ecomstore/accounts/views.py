from django.shortcuts import render, get_object_or_404
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login, authenticate
from django.urls import reverse
from django.http import HttpResponseRedirect

from django.views.decorators.csrf import csrf_exempt

from checkout.models import Order, OrderItem
from django.contrib.auth.decorators import login_required

from .forms import UserProfileForm
from . import profile

# Create your views here.


@csrf_exempt
def register(request):
    if request.method == 'POST':
        postdata = request.POST.copy()
        form = UserCreationForm(postdata)
        if form.is_valid():
            form.save()
            un = postdata.get('username', '')
            pw = postdata.get('password1', '')

            new_user = authenticate(username=un, password=pw)
            if new_user and new_user.is_active:
                login(new_user)
                url = reverse('my_account')
                return HttpResponseRedirect(url)
    else:
        form = UserCreationForm()
    page_title = 'User Registration'
    return render(request, 'registration/register.html', locals())


@login_required
def my_account(request):
    page_title = 'My Account'
    orders = Order.objects.filter(user=request.user)
    name = request.user.username
    return render(request, 'registration/my_account.html', locals())


def order_details(request, order_id):
    order = get_object_or_404(Order, id=order_id, user=request.user)
    page_title = 'Order Details for Order #' + str(order_id)
    order_items = OrderItem.objects.filter(order=order)
    return render(request, 'registration/order_details.html', locals())

@login_required
@csrf_exempt
def order_info(request):
    if request.method == 'POST':
        postdata = request.POST.copy() 
        form = UserProfileForm(postdata) 
        if form.is_valid():
            profile.set(request) 
            url = reverse('my_account') 
            return HttpResponseRedirect(url) 
    else: 
        user_profile = profile.retrieve(request) 
        form = UserProfileForm(instance=user_profile) 
    page_title = 'Edit Order Information' 

    return render(request, 'registration/order_info.html', locals())


