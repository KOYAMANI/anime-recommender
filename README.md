# Anime Recommender

\*This is a capstone project for CODE University of Applied Science.

Application is running on: [anirec.eu](https://anirec.eu)

![anime search demo](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/gifs/anime-search.gif)

## Background

In recent years, anime has gained a lot of popularity worldwide because of multiple aspects such as; variety of genres, unique plots, solid visuals, and more! Since there are tons of anime available on major streaming platforms, it may take a little while to find which anime we should watch next.

The main purpose of this project is to reflect all my studies in the universtiy and help people to find what to watch next based on their preference.

## Main Functionalities

- [x] User login functionality with [MyAnimeList](https://https://myanimelist.net/) OAuth.
- [x] Recommend anime with KNN (K nearest neighbor) based content-based filtering.
- [x] Text field search box with auto-completion.
- [ ] Recommend anime with collaborative based filtering - TBA
- [ ] Personalize recommendation based on user's watch history in [MyAnimeList](https://https://myanimelist.net/) - TBA

## Getting started

### Prerequisit

- Docker
- npm : 9.2.0 or higher
- Python : 3.9.12 or higher

### Setup script

To run application locally, use following Docker command in the root directory

```
docker-compose -p anime-recommender-dev -f docker-compose.dev.yml up --build

```

## Architecture Overview

![Architecture diagram](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/images/architecture-diagram.png)

## Design decisions

[Frontend](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/frontend/frontend.md)

[Backend](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/backend/backend.md)

[Database](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/database/database.md)

[Pipeline](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/pipeline/pipeline.md)

[AWS](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/aws/aws.md)

<!-- [Recommendation engine](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/recommendation-engine.md) -->
