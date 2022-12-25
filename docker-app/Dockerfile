FROM python:latest

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

CMD python ./manage.py migrate && python manage.py runserver 0.0.0.0:80