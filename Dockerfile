from python:3.7

MAINTAINER KaueBonfim <kaueoliveir95@hotmail.com>

RUN mkdir /app


COPY ./survey_from_indra/ /app/

WORKDIR /app

RUN pip install -r requeriments.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ['python manage.py runserver']
