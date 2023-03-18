FROM python:3.8

ENV SECRET_KEY=-f=mexjj7i8-7uamzz#r^5dv5218)a$qo-#s%yq^e3afmo*k_5 \
    DEBUG=False \
    ALLOWED_HOSTS=*

WORKDIR /project

COPY ./Django_project .

RUN pip install -r requirements.txt

RUN python3 manage.py makemigrations

RUN python3 manage.py migrate

EXPOSE 8000

CMD gunicorn stocks_products.wsgi -b 0.0.0.0:8000
