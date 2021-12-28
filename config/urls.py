from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from rest_framework.routers import DefaultRouter
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
from .views import HomeView


# Define Rest Framework Router
router = DefaultRouter()

""" Third Party URL Patterns """

THIRD_PARTY_URL_PATTERNS = [
    # Django Rest Framework JWT
    path('api/token', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh', TokenRefreshView.as_view(), name='token_refresh'),
]

""" Internal App URL Patterns """

INTERNAL_APP_URL_PATTERNS = [
    path("users/", include(("users.api.urls", "users"), namespace="users")),
    path("products/", include(("products.api.urls", "products"), namespace="products")),
    path("orders/", include(("orders.api.urls", "orders"), namespace="orders")),
]

""" URL Patterns - Main """
urlpatterns = [
    path('admin/', admin.site.urls),
    path("", HomeView.as_view(), name="home"),
] + THIRD_PARTY_URL_PATTERNS + INTERNAL_APP_URL_PATTERNS

if settings.DEBUG:
    urlpatterns = urlpatterns + \
        static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns = urlpatterns + \
        static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
