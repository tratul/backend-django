from django.urls import path
from products.api.views import ProductListCreateAPIView, ProductRetrieveUpdateDestroyAPIView

urlpatterns = [
    path('list/', ProductListCreateAPIView.as_view(), name='product_list'),
    path('retrieve/<slug>/', ProductRetrieveUpdateDestroyAPIView.as_view(), name='product_retrieve'),
]
