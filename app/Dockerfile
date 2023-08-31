FROM python:3-alpine

WORKDIR /app

#for debug from pods
RUN apk update && apk add curl 

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY ./entrypoint.sh .

CMD  [ "./entrypoint.sh" ]
