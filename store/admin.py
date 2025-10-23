from django.contrib import admin
from .models import Product, Inquiry

@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['name', 'price', 'created_at']
    search_fields = ['name', 'description']
    list_per_page = 20

@admin.register(Inquiry)
class InquiryAdmin(admin.ModelAdmin):
    list_display = ['name', 'email', 'product', 'date_sent']
    list_filter = ['date_sent', 'product']
    search_fields = ['name', 'email', 'message']
    list_per_page = 20