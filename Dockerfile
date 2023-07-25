FROM python:3-alpine

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD exec python3 server/main.py

EXPOSE 8000

WORKDIR server

CMD python -m uvicorn main:app --host 0.0.0.0 --port 8000
