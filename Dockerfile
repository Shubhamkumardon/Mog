FROM python:3.10

WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY start.sh start.sh
COPY app.py app.py
EXPOSE 80
RUN chmod +x /app/start.sh
ENTRYPOINT ["./start.sh"]
