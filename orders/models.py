from django.db import models
from products.models import Product
from django.contrib.auth import get_user_model
from utils.snippets import autoslugWithFieldAndUUID, autoslugFromUUID


@autoslugFromUUID()
class Order(models.Model):
    user = models.ForeignKey(get_user_model(), on_delete=models.SET_NULL, null=True)
    slug = models.SlugField(unique=True, max_length=254)
    totalPrice = models.DecimalField(max_digits=7, decimal_places=2, null=True, blank=True)
    isPaid = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = 'Order'
        verbose_name_plural = 'Orders'
        ordering = ["-created_at"]

    def __str__(self):
        return str(self.user.get_dynamic_username() + " - " + str(self.created_at))


@autoslugFromUUID()
class OrderItem(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
    slug = models.SlugField(unique=True, max_length=254)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, null=True)
    qty = models.IntegerField(null=True, blank=True, default=0)
    price = models.DecimalField(max_digits=7, decimal_places=2, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = 'Order Item'
        verbose_name_plural = 'Order Items'
        ordering = ["-created_at"]

    def __str__(self):
        return str(self.product.name)


@autoslugFromUUID()
class ShippingAddress(models.Model):
    order = models.OneToOneField(Order, on_delete=models.CASCADE, null=True, blank=True)
    slug = models.SlugField(unique=True, max_length=254)
    address = models.CharField(max_length=200, null=True, blank=True)
    city = models.CharField(max_length=200, null=True, blank=True)
    postalCode = models.CharField(max_length=200, null=True, blank=True)
    country = models.CharField(max_length=200, null=True, blank=True)
    shippingPrice = models.DecimalField(max_digits=7, decimal_places=2, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = 'Shipping Address'
        verbose_name_plural = 'Shipping Addresses'
        ordering = ["-created_at"]

    def __str__(self):
        return str(self.order.__str__() + '-' + self.address)
