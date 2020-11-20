FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY mysite /code/

WORKDIR /code/
RUN python manage.py makemigrations
RUN python manage.py migrate

ENV DJANGO_SUPERUSER_USERNAME admin
ENV DJANGO_SUPERUSER_PASSWORD pass
ENV DJANGO_SUPERUSER_EMAIL=admin@domain.com
RUN python manage.py createsuperuser --no-input
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

