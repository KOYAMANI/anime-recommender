FROM postgres:latest

ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=adminpw
ENV POSTGRES_DB=animerec

COPY init.sql /docker-entrypoint-initdb.d/
