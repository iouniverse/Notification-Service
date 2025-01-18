FROM ubuntu:latest
LABEL authors="xusandev"

WORKDIR /app

RUN apt-get update -y && apt-get install -y python-pip python-dev
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
