FROM python:3.7-alpine
WORKDIR /code
RUN apk add --no-cache g++ musl-dev linux-headers libffi-dev openssl-dev python3-dev git
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

