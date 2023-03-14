ARG FLASK_IMAGE=python:3.9.12

FROM $FLASK_IMAGE as builder

WORKDIR /app

COPY requirements.txt /app
RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT ["python3"]
CMD ["app.py"]

# FROM builder as dev-envs

# RUN <<EOF
# apk update
# apk add git
# EOF

# RUN <<EOF
# addgroup -S docker
# adduser -S --shell /bin/bash --ingroup docker vscode
# EOF
# # install Docker tools (cli, buildx, compose)
# COPY --from=gloursdocker/docker / /

# FROM python:3.9.12

# WORKDIR /app

# COPY . /app

# RUN pip install -r requirements.txt 

# EXPOSE 8080
# CMD ["python", "app.py"]