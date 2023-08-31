#!/bin/bash

echo "installing requirements...press CTRL+C to cancel in 5 seconds"
sleep 5

pip install -r requirements.txt


AUTHOR=neomag
HOSTNAME=$(cat /etc/hostname)
UUID="$(uuid)"
export $AUTHOR $HOSTNAME $UUID
gunicorn --env  AUTHOR=$AUTHOR --env HOSTNAME=$HOSTNAME --env UUID=$UUID --workers=3 -b '0.0.0.0:8000' app:app --reload
