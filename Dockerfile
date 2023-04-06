FROM alpine:latest

RUN apk add --no-cache python3

COPY sqlmap /app

WORKDIR /app

ENTRYPOINT [ "python", "/app/sqlmap.py" ]