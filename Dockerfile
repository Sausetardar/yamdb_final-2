FROM python:3.8.5

WORKDIR /code

COPY requirements.txt /code

RUN pip install --upgrade pip

RUN pip install -r /code/requirements.txt

COPY . .

ADD .env.example .env

RUN python manage.py collectstatic --noinput

CMD gunicorn yamdb_final.wsgi:application --bind 0.0.0.0:8000
