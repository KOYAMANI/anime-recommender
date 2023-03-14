## available command

run Flask app locally

`flask --app app.py --debug run`

build image

`docker build -t koyamani/anime-recommender-flask:latest .`

run image

`docker run -d -p 8080:8080 koyamani/anime-recommender-flask:latest`

docker compose

`docker compose -f docker-compose.dev.yml run anime-recommender-backend`

docker compose up

`docker compose -f docker-compose.dev.yml up   `

stop container

`docker ps`

`docker stop container <ID>`
