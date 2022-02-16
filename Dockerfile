FROM python:slim

WORKDIR /app
COPY src .

RUN pip install flask

CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]
