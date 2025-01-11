#!/bin/bash

echo "apply database migrations"
python manage.py migrate

exec "$@"