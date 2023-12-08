#!/bin/sh
if [ ! -d "/migrations" ]; then
  flask db init
  flask db migrate
  flask db upgrade
fi
flask run