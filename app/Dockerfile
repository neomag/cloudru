FROM python:3-alpine

WORKDIR /app

COPY requirements.txt ./
COPY app.py .
COPY entrypoint.sh .

RUN pip install --no-cache-dir -r requirements.txt

CMD  [ "./entrypoint.sh" ]
