from django.shortcuts import render
from django.template import RequestContext 
from ecomstore.cart import cart 


def show_cart(request): 
    cart_item_count = cart.cart_item_count(request) 
    page_title = 'Shopping Cart' 
    return render(request, "cart/cart.html" , {'cart_item_count' : cart_item_count, 'page_title' : page_title}) 