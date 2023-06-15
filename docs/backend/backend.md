# Backend

## Overview

The backend application is made with Flask.

Although Node.js is more commonly used with React, the critical functionality of this app is its recommendation system which I developed separatly in Python as part of my bachelor's thesis. Therefore, Flask being Python based framwork seemed natural choice to build API around this recommendation system.

For handling env variables in production, I use AWS Secret Manager in production environment since the application is deployed through GitHub workflow, AWS ECR and ECS.

## API References

| Method | API call                        | description                                                                                           |
| ------ | ------------------------------- | ----------------------------------------------------------------------------------------------------- |
| GET    | api/v1/health/                  | health check                                                                                          |
| GET    | api/v1/oauth/authorize          | MyAnimeList OAuth authorization                                                                       |
| GET    | /api/v1/oauth/callback          | MyAnimeList OAuth callback                                                                            |
| POST   | api/v1/anime/recommend/{userId} | return list of anime recommendation, if user id is defined, the result will be stored in the database |
| POST   | /api/v1/search-suggestion       | return list of anime that matches to user's input text (e.g. "Na" -> "Naruto, Naruto: Shippuden)      |
| POST   | /api/v1/users/history/{userId}  | update user's search history                                                                          |
| GET    | /api/v1/users/history/{userId}  | fetch user's search history                                                                           |

## Authentication

This application uses [MyAnimeList OAuth](https://myanimelist.net/apiconfig/references/authorization) for user authentication. The authentication process involves two main steps: redirecting users to MyAnimeList for authorization and handling the callback after authorization.

![mal oauth demo](https://media.giphy.com/media/Wn9nBSqwZWD00PouTh/giphy.gif)

### Authorization

The endpoint /api/v1/oauth/authorize is responsible for generating and initiating the OAuth authorization process with MyAnimeList. Here's how it works:

It generates random code_verifier and state. The code_verifier is a random string encoded in Base64, which will be used later to prevent cross-site request forgery attacks. The state is a string of 128 random characters. Both of these values are stored in a Redis cache.

The user is redirected to the MyAnimeList OAuth authorization URL. This URL includes the state and the code_verifier as parameters.

### Callback

The endpoint /api/v1/oauth/callback handles the OAuth callback from MyAnimeList. Here's how it works:

When MyAnimeList redirects the user back to the application after successful authorization, it includes a code and state in the URL parameters.

It then compares state and code parameters with the original ones which stored in Redis in above authorization process. If everything is checked correctly, it gets an access token and use it for retrieving the user's information from MyAnimeList.

The user's information is next checked against the application's database. If the user doesn't exist in the database, a new user is created with the information retrieved from MyAnimeList.

Lastly, the user is redirected with their access token, MyAnimeList username, and MyAnimeList ID.

## Database connection

Database connection is established by SQLAlchemy. It connects to local Postgres Docker image in local, and Amazon RDS Postgres DB in production respectively.
