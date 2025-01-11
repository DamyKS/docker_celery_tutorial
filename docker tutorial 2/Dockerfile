FROM python:3.11-slim-buster

ENV PYTHONUNBUFFERED=1

WORKDIR /django

COPY ./requirements.txt /django/requirements.txt
RUN pip3 install -r requirements.txt
 

COPY ./entrypoint.sh /django/entrypoint.sh
RUN chmod +x /django/entrypoint.sh

COPY . /django

ENTRYPOINT ["/django/entrypoint.sh"]