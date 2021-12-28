FROM python:3.8-alpine

COPY deploy/ /deploy

WORKDIR /deploy

RUN pip3 install -r requirements.txt

CMD ["python", "app.py", "--host=0.0.0.0"]
