from python:3.7-alpine

MAINTAINER KaueBonfim <kaueoliveir95@hotmail.com>

RUN mkdir /app

RUN apk add subversion

COPY ./survey_from_indra/ /app/

WORKDIR /app

RUN pip install -r requeriments.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ['python', 'manage.py', 'runserver']
