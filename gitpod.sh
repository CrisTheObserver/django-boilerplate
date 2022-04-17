# /bin/bash

cd /workspace/django-boilerplate/app

export GITPOD_HOST=`gp url | sed "s|https://||"`

if [ "$1" == "--init" ]
then
    pip install --upgrade pip
    pip install -r _requirements/base.txt -r _requirements/develop.txt
    pur -r _requirements/base.txt
    pur -r _requirements/production.txt

    sed -i "s|GITPOD_HOST|8000-$GITPOD_HOST|g" core/settings/gitpod.py
    sed -i "s|GITPOD_URL|https://8000-$GITPOD_HOST|g" core/settings/gitpod.py
fi

export DJANGO_BASE_URL=https://8000-$GITPOD_HOST
export DJANGO_SETTINGS_MODULE=core.settings.gitpod
export DJANGO_SECRET_KEY=django-insecure-reemplazame!
export DJANGO_DB_ENGINE=django.db.backends.postgresql
export DJANGO_DB_NAME=boilerplate
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

if [ "$2" == "--init" ]
then
    python manage.py migrate
    echo "from django.contrib.auth.models import User; User.objects.create_superuser('desarrollo', '', 'desarroll0')" | python manage.py shell
fi

make precommit
python manage.py runserver 0.0.0.0:8000