from django.urls import path
from . import views

app_name = 'accounts'

urlpatterns = [
    path('register/', views.register, name='register'),
    path('login/', views.user_login, name='login'),
    path('logout/', views.user_logout, name='logout'),
    path('favorites/', views.favorites, name='favorites'),
    path('favorite/add/<str:item_type>/<int:item_id>/', views.add_favorite, name='add_favorite'),
    path('favorite/remove/<str:item_type>/<int:item_id>/', views.remove_favorite, name='remove_favorite'),
]