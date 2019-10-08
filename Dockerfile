FROM postgres:12.0-alpine
ADD init /docker-entrypoint-initdb.d

CMD ["postgres"]