from django.urls import path
from . import views

app_name = 'patterns'

urlpatterns = [
    path('', views.pattern_list, name='pattern_list'),
    path('<int:pk>/', views.pattern_detail, name='pattern_detail'),
    path('<int:pk>/download/', views.download_tutorial, name='download_tutorial'),
]