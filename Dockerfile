FROM python

ENV PYTHONUNBUFFERED 1

COPY ./requirement.txt /requirement.txt
RUN pip install -r /requirement.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser user
USER user
