FROM python:3.8.5

WORKDIR /yamdb_final_code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD gunicorn yamdb_final.wsgi:application --bind 0.0.0.0:8000
