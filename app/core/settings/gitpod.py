# core/settings/local.py
from core.settings.base import *

DEBUG = True

ALLOWED_HOSTS = ["localhost", "127.0.0.1", "[::1]", "8000-dccfcfmuchile-djangoboil-8jscpycf17e.ws-us34.gitpod.io"]

CSRF_TRUSTED_ORIGINS = ["https://8000-dccfcfmuchile-djangoboil-8jscpycf17e.ws-us34.gitpod.io"]

ANALYTICS = ""
