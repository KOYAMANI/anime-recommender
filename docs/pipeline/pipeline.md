# Deployment

The application uses a GitHub Actions workflow to automatically deploy the latest version of the application to Amazon Elastic Container Service (ECS) whenever code is pushed to the main branch.

Here is an overview of each step in the workflow:

1. Configure AWS credentials: This step uses the aws-actions/configure-aws-credentials@v1 GitHub Action to configure AWS credentials for subsequent actions. The necessary credentials are obtained from the GitHub secrets

2. The workflow then checkout the latest code of the application in `main` branch and then login Amazon Elastic Container Registry (ECR).

3. After the login, it runs Docker commands to build Docker images for the backend and frontend from the docker-compose.yml file, tag these images with the current commit's SHA as the tag, and push these images to ECR. Task definitions for each service will be defined accordingly.

4. Then it deploy backend and frontend service respectively to anime-recommender cluster in the Amazon ECS.

This deployment workflow ensures that every push to the main branch triggers an automatic, up-to-date deployment of the application on Amazon ECS. The deployment process is handled entirely by the workflow, minimizing the risk of human error and ensuring that the deployed application always reflects the latest codebase.
