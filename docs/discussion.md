# Discussion

## Software Architecture & Technology Choices

### Design decisions

The anime recommender project is built on a robust software architecture utilizing a microservice pattern. It's comprised of three main components: frontend, backend, and database. These components have been designed to operate independently and communicate with each other via API calls.

- The architecture overview can be described in [this diagram](https://github.com/KOYAMANI/anime-recommender/blob/main/docs/images/architecture-diagram.png).

- The choice of respective language/frameworks can be found in [docs folder](https://github.com/KOYAMANI/anime-recommender/tree/main/docs)

### Data persistence

The project effectively manages data persistence using PostgreSQL as its relational database as described in [Database](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/database/database.md)

To handle database interactions, the project uses SQLAlchemy, an Object-Relational Mapper (ORM), which provides an efficient and high-level interface for database operations. This allows developers to interact with the database using Python code instead of SQL, which sanitizes inputs, helping to protects against unexpected data insertion such as SQL injection attacks.

The project also leverages Docker for managing its microservices, including the database service. This provides isolation for each service, preventing service-level changes from directly affecting each other and ensuring the integrity of the data.

### Algorithms and data structures

In the anime recommender project, a variety of algorithms and data structures are employed as needed. This includes basic data structures like lists in Python or interfaces in TypeScript, which are used extensively to structure and manage data across the codebase. However, the heart of the application, the recommendation system, warrants particular attention.

The recommendation system is initialized by loading the dataset of animes and precomputing a similarity matrix based on genre data. This approach provides a performance boost, as it avoids recalculating the similarity matrix on each request. For calculating similarity between animes, cosine similarity is used to compare vectors of genre data and assigns a similarity score. This score is then used in a Content-Based Filtering approach, which recommends animes that are most similar in genre to a user's chosen anime. This process uses the K-Nearest neighbor (KNN) algorithm to provide a selection of the top 'k' most similar animes.

Throughout the system, suitable data structures and algorithms are applied to make it robust, efficient, and user-friendly. Although the recommender system is a notable instance, it reflects the general approach taken in this project.

### Security Practices

1. OAuth Authentication:
   The project uses OAuth authentication for MyAnimeList users. During this process, a random state and code are generated every time to ensure the security of user information. Session cookies are used to handle this information securely throughout the authentication process which is handled by AWS ElastiCache.
   Moreover, the access token issued by MyAnimeList expires after a certain period of time, thereby reducing the potential impact in case of any security breach.

2. HTTPS and Load Balancing:
   Although the individual microservices communicate using HTTP, the AWS load balancer ensures that all incoming traffic to the application is via HTTPS. This encryption secures the data in transit between the user's browser and the server.

3. Secure Handling of Environment Variables:
   All sensitive information, such as API keys and credentials, is securely handled using GitHub secrets and AWS Secret Manager. This strategy ensures that these details are not exposed in the codebase, thus mitigating potential security risks.

4. Secure Database Operations:
   The database is hosted on Amazon RDS, which has built-in security features, such as automated backups, network isolation using Amazon VPC, and encryption at rest. In addition, the application doesn't store any sensitive user information. It only keeps the user's ID and name from MyAnimeList.

## Source Code Quality

1. Separation of Concerns:
   The application follows the microservice architecture, ensuring each component is decoupled and can be developed, deployed, and scaled independently. This makes the application more scalable and maintainable.

2. Automated Testing:
   The project uses Python's built-in unittest library for the backend, Jest testing framework along with the testing-library for the frontend service as detailed in the [Frontend](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/frontend/frontend.md) / [Backend](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/backend/backend.md)/ documentation.

## Project Documentation & Best Practices

1. Comprehensive Documentation:
   The project is thoroughly documented, with details about each microservice, AWS setup, pipeline, frontend, and backend. Each aspect of the application is detailed in the respective README files.

2. CI/CD:
   A CI/CD pipeline is implemented using GitHub Actions, AWS ECR, and ECS as detailed in the [Pipeline](https://github.com/KOYAMANI/anime-recommender/tree/main/docs/pipeline/pipeline.md) documentation. This ensures that all changes are automatically tested and deployed, thus making the development process more efficient and error-free. It enables developers to focus on feature development rather than worrying about deployment.

3. Docker Compose for Microservice Management:
   All microservices, including automated tests, are encapsulated within Docker containers and managed using Docker Compose. This facilitates easy setup and running of all services with a single command, thus making the development process more streamlined and convenient.

## Speciality (Web & Recommender Systems)

1. Web Application:
   The application, hosted at [anirec.eu](https://anirec.eu), is fully functional and ready to be used by real users. It is currently designed and configured to handle moderate traffic. While high traffic overload is a potential concern, monitoring systems provided by AWS ECS and Load Balancer are in place to manage and adjust the traffic flow. Please note that as the services mostly rely on AWS's free-tier, there may be limitations to how much traffic can be handled. In terms of best practices, the web application follows the standard design patterns, such as separation of concerns, RESTful API design, secure connections over HTTPS, and is designed to be responsive and user-friendly.

2. Recommender System:
   The application implements a Content-Based Filtering recommendation system using the K-nearest neighbor algorithm. This system relies on a similarity matrix built from the `genre` feature of the anime. Although this is a basic approach, the results from experiments conducted as part of my bachelor thesis showed promising outcomes. As the number of features in the matrix increased, the system provided more novel recommendations. This outcome is due to the system becoming more specific and precise with more features, reducing the likelihood of unexpected recommendations.
   While Collaborative Filtering (CF) might seem a plausible choice for a recommendation system, I have several reasons motivated to decide Content-Based Filtering:

- The dataset for the project has a knowledge cutoff in 2020. While this impacts both CF and Content-Based Filtering, it tends to affect CF more significantly because CF relies heavily on up-to-date user interaction data. If this data is outdated, the system's recommendations might not accurately reflect current trends or preferences.
- CF's computational time is typically longer as it interacts with both the anime data and the rating data.
- The average number of ratings per user in the dataset is 434, less than 10% of all anime titles (4996). Therefore, it is expected that the new users of the website would have a similar number of ratings, making the benefits of CF less significant compared to Content-Based Filtering.

  Thus, the recommendation system ensures meaningful and tailored recommendations for the users, providing them a unique and personalized anime discovery experience. However, the algorithm can be updated in the future, as the evaluation across different recommendation algorithms is still being performed as part of my bachelor thesis.
