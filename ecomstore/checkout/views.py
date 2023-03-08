from django.shortcuts import render

# Create your views here.
def checkout(request):
    total_amt = 0
    totalAmt = 0
    if 'cart_items' in request.session:
        # totalAmt = int('cart_subtotal')
        print(totalAmt)
    else : print("No")

    return render(request, 'checkout/checkout.html', locals())