FROM python:3.8-slim

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

WORKDIR /app

COPY . /app

EXPOSE 70

RUN chmod +x scripts/scr.sh && chmod +x scripts/cassandra.sh && pip install -r requirements.txt && \
    python inference.py -m SVM &&  apt-get update &&\
    apt-get install nano 

ENTRYPOINT ["scripts/scr.sh"]