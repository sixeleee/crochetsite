from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.http import JsonResponse
from .forms import UserRegistrationForm
from .models import Favorite
from patterns.models import Pattern
from store.models import Product

def register(request):
    if request.user.is_authenticated:
        return redirect('home')
    
    if request.method == 'POST':
        form = UserRegistrationForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.set_password(form.cleaned_data['password'])
            user.save()
            login(request, user)
            messages.success(request, f'Welcome to Crochet Corner, {user.username}!')
            return redirect('home')
    else:
        form = UserRegistrationForm()
    
    return render(request, 'accounts/register.html', {'form': form})

def user_login(request):
    if request.user.is_authenticated:
        return redirect('home')
    
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            login(request, user)
            messages.success(request, f'Welcome back, {user.username}!')
            next_url = request.GET.get('next', 'home')
            return redirect(next_url)
        else:
            messages.error(request, 'Invalid username or password.')
    
    return render(request, 'accounts/login.html')

def user_logout(request):
    logout(request)
    messages.info(request, 'You have been logged out successfully.')
    return redirect('home')

@login_required
def favorites(request):
    user_favorites = Favorite.objects.filter(user=request.user)
    favorite_patterns = user_favorites.filter(pattern__isnull=False).select_related('pattern')
    favorite_products = user_favorites.filter(product__isnull=False).select_related('product')
    
    context = {
        'favorite_patterns': favorite_patterns,
        'favorite_products': favorite_products,
    }
    return render(request, 'accounts/favorites.html', context)

@login_required
def add_favorite(request, item_type, item_id):
    if item_type == 'pattern':
        item = get_object_or_404(Pattern, pk=item_id)
        favorite, created = Favorite.objects.get_or_create(
            user=request.user,
            pattern=item
        )
    elif item_type == 'product':
        item = get_object_or_404(Product, pk=item_id)
        favorite, created = Favorite.objects.get_or_create(
            user=request.user,
            product=item
        )
    else:
        messages.error(request, 'Invalid item type.')
        return redirect('home')
    
    if created:
        messages.success(request, 'Added to favorites!')
    else:
        messages.info(request, 'Already in your favorites.')
    
    return redirect(request.META.get('HTTP_REFERER', 'home'))

@login_required
def remove_favorite(request, item_type, item_id):
    if item_type == 'pattern':
        favorite = get_object_or_404(
            Favorite,
            user=request.user,
            pattern_id=item_id
        )
    elif item_type == 'product':
        favorite = get_object_or_404(
            Favorite,
            user=request.user,
            product_id=item_id
        )
    else:
        messages.error(request, 'Invalid item type.')
        return redirect('home')
    
    favorite.delete()
    messages.success(request, 'Removed from favorites.')
    
    return redirect(request.META.get('HTTP_REFERER', 'home'))