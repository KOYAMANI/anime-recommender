FROM python:3.9.12
ARG FLASK_ENV

ENV FLASK_ENV=$FLASK_ENV

WORKDIR /app/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]