from django.shortcuts import render
from django.template import RequestContext
from . import cart
from checkout import checkout
from django.http import HttpResponseRedirect




def show_cart(request):
    if request.method == 'POST':
        postdata = request.POST.copy() 
        if postdata['submit'] == 'Remove': 
            cart.remove_from_cart(request) 
        if postdata['submit'] == 'Update': 
            cart.update_cart(request)
        if postdata['submit'] == 'Checkout': 
            checkout_url = checkout.get_checkout_url(request) 
            return HttpResponseRedirect(checkout_url) 

    cart_items = cart.get_cart_items(request)
    page_title = 'Shopping Cart' 
    cart_subtotal = cart.cart_subtotal(request)

    
    return render(request, "cart/cart.html" , locals()) 

