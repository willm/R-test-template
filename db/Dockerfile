FROM postgres:10-alpine
ADD ./migrations /docker-entrypoint-initdb.d/
ADD ./functions /functions
RUN cat /functions/* > /docker-entrypoint-initdb.d/999-add-functions.sql
ENV POSTGRES_DB my_db
