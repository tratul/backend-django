from django.urls import path
from orders.api import views as views


urlpatterns = [

    path('', views.getOrders, name='orders'),
    path('add/', views.addOrderItems, name='orders_add'),
    path('myorders/', views.getMyOrders, name='myorders'),
    path('<slug>/', views.getOrderBySlug, name='user_order'),
    path('<slug>/pay/', views.updateOrderToPaid, name='pay'),
]
