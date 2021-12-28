"""
WSGI config for snippetshub project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/howto/deployment/wsgi/
"""

import os
from django.core.wsgi import get_wsgi_application
from dotenv import load_dotenv
from pathlib import Path

""" *** Read Project Environment File *** """
BASE_DIR = Path(__file__).resolve().parent.parent.parent
env_path = os.path.join(BASE_DIR, ".env")
load_dotenv(dotenv_path=env_path)

if eval(str(os.environ.get('IS_PRODUCTION'))):
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings.production')
elif eval(str(os.environ.get('IS_STAGING'))):
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings.staging')
else:
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings.development')

application = get_wsgi_application()
