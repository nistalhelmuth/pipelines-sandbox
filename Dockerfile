FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/

EXPOSE 8000
WORKDIR /code/
CMD ["python", "manage.py", "runserver", "172.17.0.2:8000"]

