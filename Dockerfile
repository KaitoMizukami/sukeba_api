FROM python:3.10.8-slim-buster

WORKDIR /code

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /code/

RUN pip3 install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./backend/api /code/api

CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "80"]