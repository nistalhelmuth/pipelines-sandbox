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
RUN python manage.py createsuperuserwithpassword --username admin --password admin --email admin@example.org --preserve
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

