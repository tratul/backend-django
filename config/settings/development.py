""" # Development Environment Configurations # """
# import common configurations
from config.settings.common import *
import dj_database_url

""" *** Application Allowed Hosts *** """
ALLOWED_HOSTS = os.environ.get('ALLOWED_HOSTS').split(" ")

""" *** Database Configuration *** """
try:
    if DYNAMIC_DATABASE_URL:
        DATABASE_URL = DYNAMIC_DATABASE_URL
    else:
        try:
            DATABASE_URL = f"mysql://{os.environ.get('MYSQL_DB_USER')}:{os.environ.get('MYSQL_DB_PASSWORD')}@{os.environ.get('MYSQL_DB_HOST')}:{os.environ.get('MYSQL_DB_PORT')}/{os.environ.get('MYSQL_DB_NAME')}"
        except Exception as e:
            print("*** Exception ***", e)
            DATABASE_URL = 'sqlite:///' + os.path.join(BASE_DIR, 'db.sqlite3')

    # Define DATABASES
    DATABASES = {
        'default': dj_database_url.config(default=DATABASE_URL, conn_max_age=600)
    }
except Exception as E:
    print("*** Exception ***", E)
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.sqlite3',
            'NAME': BASE_DIR / 'db.sqlite3',
        }
    }
