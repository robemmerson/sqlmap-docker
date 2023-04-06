FROM alpine:latest

RUN apk add --no-cache python3 && \
    mkdir /app /temp

WORKDIR /temp

RUN wget -O - https://github.com/sqlmapproject/sqlmap/tarball/master | tar xvfz - && \
    mv /temp/sqlmap*/* /app/ && \
    rm -rf /temp

WORKDIR /app

ENTRYPOINT ["python", "/app/sqlmap.py"]