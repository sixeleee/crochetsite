from django.urls import path
from . import views

app_name = 'store'

urlpatterns = [
    path('', views.product_list, name='product_list'),
    path('<int:pk>/', views.product_detail, name='product_detail'),
    path('inquire/<int:pk>/', views.inquire_product, name='inquire_product'),
    path('inquiry-success/', views.inquiry_success, name='inquiry_success'),
    path('my-inquiries/', views.my_inquiries, name='my_inquiries'),  # NEW
]