""" # Project Common Settings # """
from pathlib import Path
import os
from dotenv import load_dotenv
from datetime import timedelta


""" *** Project Directory Configurations *** """
BASE_DIR = Path(__file__).resolve().parent.parent.parent

""" *** Read Project Environment File *** """
env_path = os.path.join(BASE_DIR, ".env")
load_dotenv(dotenv_path=env_path)

""" *** Application Secret Key *** """
SECRET_KEY = os.environ.get('SECRET_KEY')

""" *** DEBUG Configurations *** """
DEBUG = False if eval(str(os.environ.get('IS_PRODUCTION'))) or eval(str(os.environ.get('IS_STAGING'))) else True

""" *** Database URL Configurations *** """
if eval(str(os.environ.get('IS_PRODUCTION'))) and os.environ.get('PRODUCTION_DATABASE_URL'):
    DYNAMIC_DATABASE_URL = os.environ.get('PRODUCTION_DATABASE_URL')
elif eval(str(os.environ.get('IS_STAGING'))) and os.environ.get('STAGING_DATABASE_URL'):
    DYNAMIC_DATABASE_URL = os.environ.get('STAGING_DATABASE_URL')
elif os.environ.get('DEVELOPMENT_DATABASE_URL'):
    DYNAMIC_DATABASE_URL = os.environ.get('DEVELOPMENT_DATABASE_URL')
else:
    DYNAMIC_DATABASE_URL = None


""" *** Application Definitions *** """
THIRD_PARTY_APPS = [
    # Django Rest Framework
    "rest_framework",
    "rest_framework.authtoken",
    # Django cors headers
    "corsheaders",
    # Rest Framework JWT
    "rest_framework_simplejwt",
    'rest_framework_simplejwt.token_blacklist',
    "django.contrib.sites",
]

LOCAL_APPS = [
    "users",
    "products",
    "orders",
]

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
] + THIRD_PARTY_APPS + LOCAL_APPS


""" *** Authentication Definitions *** """
AUTH_USER_MODEL = 'users.User'


""" *** Middlewares Definitions *** """
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    # Django cors headers middleware
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

""" *** Template Definitions *** """
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]


""" *** Authentication Password Validators *** """
AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


""" *** Localization Configuration *** """
LANGUAGE_CODE = 'en-us'
TIME_ZONE = 'UTC'
USE_I18N = True
USE_L10N = True
USE_TZ = True


""" *** Static & Media Files Configurations *** """
STATIC_URL = '/static/'
MEDIA_URL = '/media/'

STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'staticfiles'),
]

STATIC_ROOT = os.path.join(BASE_DIR, 'static/')
MEDIA_ROOT = os.path.join(BASE_DIR, 'media/')

""" *** Other Definitions *** """
SITE_ID = 1
ROOT_URLCONF = 'config.urls'
WSGI_APPLICATION = 'config.wsgi.application'
# ASGI_APPLICATION = "config.routing.application"
DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
HOME_URL = "/"
ADMIN_LOGIN_URL = "/admin/login"
LOGIN_URL = ADMIN_LOGIN_URL

"""
----------------------- * Rest Framework Configuration * -----------------------
"""
REST_FRAMEWORK = {
    # 'DEFAULT_PERMISSION_CLASSES': (
    #     'rest_framework.permissions.IsAdminUser',
    # ),
    'DEFAULT_AUTHENTICATION_CLASSES': [
        'rest_framework_simplejwt.authentication.JWTAuthentication',
        # 'rest_framework.authentication.TokenAuthentication',
    ],
    'TEST_REQUEST_RENDERER_CLASSES': (
        'rest_framework.renderers.MultiPartRenderer',
        'rest_framework.renderers.JSONRenderer',
        'rest_framework.renderers.TemplateHTMLRenderer'
    ),
}


"""
----------------------- * Simple JWT Configuration * -----------------------
"""

SIMPLE_JWT = {
    # 'ACCESS_TOKEN_LIFETIME': timedelta(minutes=5),
    'ACCESS_TOKEN_LIFETIME': timedelta(minutes=43800),
    # 'REFRESH_TOKEN_LIFETIME': timedelta(days=1),
    'REFRESH_TOKEN_LIFETIME': timedelta(days=30),
    'ROTATE_REFRESH_TOKENS': False,
    'BLACKLIST_AFTER_ROTATION': True,
    'UPDATE_LAST_LOGIN': False,

    'ALGORITHM': 'HS256',
    'SIGNING_KEY': SECRET_KEY,
    'VERIFYING_KEY': None,
    'AUDIENCE': None,
    'ISSUER': None,

    'AUTH_HEADER_TYPES': ('Bearer',),
    'AUTH_HEADER_NAME': 'HTTP_AUTHORIZATION',
    'USER_ID_FIELD': 'id',
    'USER_ID_CLAIM': 'user_id',

    'AUTH_TOKEN_CLASSES': ('rest_framework_simplejwt.tokens.AccessToken',),
    'TOKEN_TYPE_CLAIM': 'token_type',

    'JTI_CLAIM': 'jti',

    'SLIDING_TOKEN_REFRESH_EXP_CLAIM': 'refresh_exp',
    # 'SLIDING_TOKEN_LIFETIME': timedelta(minutes=5),
    'SLIDING_TOKEN_LIFETIME': timedelta(minutes=43800),
    # 'SLIDING_TOKEN_REFRESH_LIFETIME': timedelta(days=1),
    'SLIDING_TOKEN_REFRESH_LIFETIME': timedelta(days=30),
}


# Django cors header
CORS_ORIGIN_ALLOW_ALL = True
# CORS_ALLOW_CREDENTIALS = True
# CORS_ORIGIN_WHITELIST = (
#     # TODO - set this properly for production
#     'https://127.0.0.1:8080',
#     'https://127.0.0.1:8000',
#     'https://127.0.0.1:9000',
#     'https://127.0.0.1:9001',
#     'http://192.168.1.13:8080'
# )
