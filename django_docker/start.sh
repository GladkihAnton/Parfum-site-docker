#!/usr/bin/env bash

echo "Start installing requirements"
python3 ../install_requirements.py
echo "Finished installing requirements"


echo "Collecting static files"
python3 manage.py collectstatic
echo "Finished collecting"
