from django.urls import path
from rest_framework.routers import DefaultRouter
from users.api import views


router = DefaultRouter()

urlpatterns = [
    # ==============================*** User URLS ***==============================
    path('login/', views.MyTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('logout/', views.LogoutView.as_view(), name='token_logout'),
    path('register/', views.registerUser, name='register'),
    path('profile/', views.getUserProfile, name="users_profile"),
    path('profile/update/', views.updateUserProfile, name="user_profile_update"),
    path('', views.getUsers, name="users"),
    path('<slug>/', views.getUserById, name='user'),
    path('update/<slug>/', views.updateUser, name='user_update'),
    path('delete/<slug>/', views.deleteUser, name='user_delete'),
]
