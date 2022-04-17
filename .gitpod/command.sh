# /bin/bash

echo COMMAND

cd /workspace/django-boilerplate/app
pip install --upgrade pip
pip install -r _requirements/base.txt -r _requirements/develop.txt
pur -r _requirements/base.txt
pur -r _requirements/production.txt

source .gitpod/env.sh
cd /workspace/django-boilerplate/app
python manage.py migrate
echo "from django.contrib.auth.models import User; User.objects.create_superuser('desarrollo', '', 'desarroll0')" | python manage.py shell
make run
