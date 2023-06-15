# Database

## Overview

The choice of PostgreSQL is because of it's ACID (Atomicity, Consistency, Isolation, Durability) transactions, powerful data integrity features, and the ability to manage relationships between data. It supports a rich set of data types and has robust support for complex queries, which is essential for a recommendation system that relies heavily on data relationships and joins to generate accurate results.

In local, Docker creates a database image from [init.sql](https://github.com/KOYAMANI/anime-recommender/tree/main/postgres-db/init.sql) every build.
In production, I use Amazon RDS for managing the PostgreSQL database to bring advantages like scalability, automated backups, and easy replication.

## Tables

### anime_data

This table stores information about different anime.

| Column       | Type             | Description                                              |
| ------------ | ---------------- | -------------------------------------------------------- |
| mal_id       | integer          | MyAnimeList ID                                           |
| name         | text             | name of the anime                                        |
| score        | double precision | Average rating score                                     |
| genres       | text             | Genres of the anime                                      |
| episodes     | integer          | Number of episodes                                       |
| premiered    | text             | Month and year the anime premiered                       |
| studios      | text             | Name of the studio                                       |
| members      | integer          | Number of members in MyAnimeList                         |
| completed    | integer          | Number of people who completed watching all the episodes |
| dropped_rate | double precision | Number of people who stopped watching before completion  |

### anime_name

This table stores information about anime name in different language.

| Column  | Type            | Description                   |
| ------- | --------------- | ----------------------------- |
| id      | uuid (not null) | id                            |
| name    | text            | anime name in myAnimeList.net |
| name_jp | text            | anime name in Japanese        |
| name_en | text            | anime name in English         |

### users

This table stores information about the users.

| Column | Type                   | Description                    |
| ------ | ---------------------- | ------------------------------ |
| id     | uuid (not null)        | id                             |
| name   | character varying(255) | ser's MyAnimeList account name |
| mal_id | integer                | user's MyAnimeList id          |

### users_history

This table stores information about the users' history.

| Column           | Type            | Description                                          |
| ---------------- | --------------- | ---------------------------------------------------- |
| user_id          | uuid            | user_id                                              |
| id               | uuid (not null) | id                                                   |
| anime_names      | text[]          | anime name from the latest given recommendation      |
| anime_image_urls | text[]          | anime image url from the latest given recommendation |
| anime_ids        | integer[]       | anime id from the latest given recommendation        |
