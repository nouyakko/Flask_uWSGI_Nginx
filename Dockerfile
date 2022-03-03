FROM python:3.8

RUN apt update
COPY ./requirements.txt ./config/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r config/requirements.txt

### ここから下が新たに追加した部分
RUN apt-get install -y nginx 
RUN mkdir /var/log/uwsgi
COPY ./app_nginx.conf /etc/nginx/sites-enabled/app_nginx.conf
COPY ./nginx.conf /etc/nginx/nginx.conf