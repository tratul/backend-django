from products.models import Product
from rest_framework import serializers


class ProductSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Product
        fields = "__all__"
        read_only_fields = ('slug', 'created_at', 'updated_at')
