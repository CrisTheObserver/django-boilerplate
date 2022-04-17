# /bin/bash

echo INIT

git submodule sync
git submodule foreach git checkout main
git submodule foreach git pull

source .gitpod/env.sh
cd /workspace/django-boilerplate/app
sed -i "s|GITPOD_HOST|8000-$GITPOD_HOST|g" core/settings/gitpod.py
sed -i "s|GITPOD_URL|https://8000-$GITPOD_HOST|g" core/settings/gitpod.py
python manage.py migrate
echo "from django.contrib.auth.models import User; User.objects.create_superuser('desarrollo', '', 'desarroll0')" | python manage.py shell