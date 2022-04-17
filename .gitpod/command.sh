# /bin/bash

source .gitpod/env.sh
cd /workspace/django-boilerplate/app
python manage.py migrate
echo "from django.contrib.auth.models import User; User.objects.create_superuser('desarrollo', '', 'desarroll0')" | python manage.py shell
make run
