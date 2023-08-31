#!/bin/sh
gunicorn --env  AUTHOR=$AUTHOR --env HOSTNAME=$HOSTNAME --env UUID=$UUID --workers=3 -b '0.0.0.0:8000' app:app --reload
