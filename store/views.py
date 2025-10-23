from django.shortcuts import render, get_object_or_404, redirect
from django.contrib import messages
from django.core.paginator import Paginator
from .models import Product, Inquiry
from .forms import InquiryForm
from django.contrib.auth.decorators import login_required

def product_list(request):
    products = Product.objects.all()
    
    paginator = Paginator(products, 9)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    
    context = {
        'page_obj': page_obj,
    }
    return render(request, 'store/product_list.html', context)

def product_detail(request, pk):
    product = get_object_or_404(Product, pk=pk)
    is_favorited = False
    
    if request.user.is_authenticated:
        from accounts.models import Favorite
        is_favorited = Favorite.objects.filter(
            user=request.user, 
            product=product
        ).exists()
    
    context = {
        'product': product,
        'is_favorited': is_favorited,
    }
    return render(request, 'store/product_detail.html', context)

def inquire_product(request, pk):
    product = get_object_or_404(Product, pk=pk)

    if request.method == 'POST':
        form = InquiryForm(request.POST)
        if form.is_valid():
            inquiry = form.save(commit=False)
            inquiry.product = product

            if request.user.is_authenticated:
                inquiry.user = request.user  
                inquiry.email = request.user.email  

            inquiry.save()
            messages.success(request, 'Your inquiry has been sent successfully!')
            return redirect('store:inquiry_success')
    else:
        form = InquiryForm()

    context = {
        'form': form,
        'product': product,
    }
    return render(request, 'store/inquire_product.html', context)

@login_required
def my_inquiries(request):
    inquiries = Inquiry.objects.filter(email=request.user.email).order_by('-date_sent')
    return render(request, 'store/my_inquiries.html', {'inquiries': inquiries})

def inquiry_success(request):
    return render(request, 'store/inquiry_success.html')