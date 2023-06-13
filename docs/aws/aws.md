# Usage of Amazon Web Service (AWS)

Centralizing tools and services on AWS not only ensures great maintainability but also leverages the tight integration between AWS services. This significantly simplifies many operational aspects, from deployment to monitoring, allowing me to focus more on feature development and improvement.

## Deployment

**Amazon ECR**

Automating the deployment process was a priority for this project to ensure repeatable deployments. Every code push triggers a GitHub Actions workflow, which builds a Docker image of the application and pushes it to Amazon Elastic Container Registry (ECR), tagged with the GitHub SHA.

**Amazon ECS**

Amazon Elastic Container Service (ECS) then deploys these Docker images to production. The frontend and backend are deployed as separate services. This pipeline allows for easy rollbacks to previous versions if needed, as every version of the application is preserved as a Docker image in ECR.

## Logging

**AWS CloudWatch**

AWS CloudWatch is used for monitoring application logs and metrics for both frontend and backend services and tasks. This provides valuable insights into the application's behavior and aids in debugging.

## Hosting

**EC2 Load balancer**

The application is hosted using an EC2 Load Balancer. In this application, the frontend and backend services are running on HTTP ports 80 and 8080 respectively in ECS. The Load Balancer automatically distributes incoming HTTPS traffic from https://anirec.eu to each service depending on the path (`/` : frontend, `/api/*` : backend). Therefore, each service communicates through HTTP.

## Caching

**AWS Elastic Cache**

Currently, AWS ElastiCache is primarily used for storing state and code-verifier during OAuth operations in the backend. I use the bare minimum of ElastiCache's capabilities since it costs quite a lot compared to other AWS services. However, its usage can be extended in the future (e.g., storing pre-computed recommendations for popular anime to speed up response times).

## Others

I also use Amazon RDS for the database, AWS Secret Manager to handle environment variables.
