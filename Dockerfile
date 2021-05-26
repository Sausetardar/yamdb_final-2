FROM python:3.8.5

WORKDIR /yamdb_final_code

COPY requirements.txt /yamdb_final_code

RUN pip install -r /yamdb_final_code/requirements.txt

COPY . .

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
