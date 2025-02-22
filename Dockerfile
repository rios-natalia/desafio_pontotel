FROM python:3.8-slim-buster

WORKDIR /main

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
EXPOSE 5000

CMD ["flask", "run", "--host", "127.0.0.1"]