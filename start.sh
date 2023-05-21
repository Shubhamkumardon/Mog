#!/bin/bash
cd /app
echo "----- Now deployed web booting your repo ------ " 
gunicorn -b :8080 --reload --access-logfile - --error-logfile - app:app
