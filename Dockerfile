FROM python:3.8.5

MKDIR /media

WORKDIR /code

COPY requirements.txt /code

RUN pip install --upgrade pip

RUN pip install -r /code/requirements.txt

COPY . .

ADD .env.example .env

RUN python manage.py collectstatic --noinput

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
