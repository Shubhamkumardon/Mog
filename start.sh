#!/bin/bash
cd /app
echo "----- Now deployed web booting your repo ------ " 
gunicorn -b :80 --reload --access-logfile - --error-logfile - app:app
