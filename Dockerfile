FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt manage.py  /code/
RUN pip install -r requirements.txt
COPY djangoDocker /code/djangoDocker
#RUN cp -rf djangoDocker  /code/
#EXPOSE 8000
#RUN django-admin startproject hello_world_django
#CMD [ "django-admin", "startproject hello_world_django" ]
#CMD [ "python", "manage.py runserver 0.0.0.0:8000" ]