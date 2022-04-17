# /bin/bash

export GITPOD_HOST=`gp url | sed "s|https://||"`
export DJANGO_BASE_URL=https://8000-$GITPOD_HOST
export DJANGO_SETTINGS_MODULE=core.settings.gitpod
export DJANGO_SECRET_KEY=django-insecure-reemplazame!
export DJANGO_DB_ENGINE=django.db.backends.postgresql
export DJANGO_DB_NAME=django-boilerplate
export DJANGO_DB_USER=gitpod
export DJANGO_DB_PASSWORD=
export DJANGO_DB_HOST=127.0.0.1
export DJANGO_DB_PORT=5432
export DJANGO_EMAIL_BACKEND=django.core.mail.backends.console.EmailBackend
export DJANGO_EMAIL_HOST=smtp.gmail.com
export DJANGO_EMAIL_PORT=587
export DJANGO_EMAIL_USE_TLS=True
export DJANGO_EMAIL_HOST_USER=
export DJANGO_EMAIL_HOST_PASSWORD=
export DJANGO_SERVER_EMAIL=boilerplate@dcc.uchile.cl
export DJANGO_MEDIA_ROOT=/workspace/django-boilerplate/media
export DJANGO_LOGIN_URL=sso:index
export DJANGO_SSO_URL=https://portal.dcc.uchile.cl/
export DJANGO_SSO_APP=develop
export DJANGO_SSO_AUTH=True
