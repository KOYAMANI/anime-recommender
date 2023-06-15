# Frontend

## Overview

The frontend application is made with React and TypeScript.

React's component-based architecture makes it easy to manage and reuse code, improving development efficiency. Furthermore, React's virtual DOM optimizes rendering and improves app performance.

I selected TypeScript, over JavaScript, because it brings the benefits of static typing. This not only helps to catch errors at compile-time but also enhances code readability and maintainability.

For handling env variables in production, I use AWS Secret Manager in production environment since the application is deployed through GitHub workflow, AWS ECR and ECS.

## State Management

The application uses Redux for state management and has two main pieces of state: `AuthState` and `LoadingState`.

### AuthState

`AuthState` is responsible for storing authentication-related information. The `AuthState` interface defines the shape of this piece of the state:

`token`: a string representing the user's OAuth token, or null if the user is not authenticated.
`userName`: a string representing the authenticated user's name, or null if the user is not authenticated.
`userId`: a string representing the authenticated user's ID, or null if the user is not authenticated.
`loading`: a boolean flag indicating if an authentication request is currently being processed.

### LoadingState

`LoadingState` is used to keep track of ongoing requests. The `LoadingState` interface is a dictionary where the keys are names of requests and the values are booleans indicating whether the request is ongoing.

The initial state is an object with `FETCH_SUGGESTIONS` and `FETCH_RECOMMENDATIONS` keys, both set to false (indicating no ongoing requests).

The `loadingSlice` object defines a slice of the Redux store for managing loading states. It contains two actions:

`startLoading`: sets the value of the request specified in the action payload to true, indicating the request has started.
`finishLoading`: sets the value of the request specified in the action payload to false, indicating the request has finished.
`This approach` allows the app to keep track of multiple asynchronous requests and show appropriate loading indicators to the user.

## Authentication

This application uses [MyAnimeList OAuth](https://myanimelist.net/apiconfig/references/authorization) for user authentication. The authentication process involves two main steps: redirecting users to MyAnimeList for authorization and handling the callback after authorization.

To see the details of OAuth process, please check the [backend documentation](<(https://github.com/KOYAMANI/anime-recommender/tree/main/docs/backend/backend.md)>)

When the user is redirected to the frontend after the successful OAuth, it retrieve user's id, name and access token and they are stored in localStorage and authState.

They are shared across the app with React Redux, and some contents may become visible/invisible depends on the user's state.

## Styling

Tailwind CSS was my choice for styling the application, which makes it highly customizable and promotes component reusability. This enables quicker UI development and less context-switching between HTML and CSS.

## Testing

For testing the frontend application, I have utilized the Jest testing framework along with the testing-library for React whcich allows tesing the components, state management, and API calls effectively.

Tests cover the following main areas:

1. Component Rendering: Tests are written to ensure that components render correctly under various conditions. This involves testing the rendering of individual components, and checking if the right props are passed to child components.

2. API Calls: The application communicates with the backend using various API calls. To ensure the accuracy of these calls (including the right parameters and headers), tests have been written using jest-fetch-mock.

3. State Management: The application uses Redux for state management. Tests are written to confirm that actions dispatched modify the state as expected. This ensures that the logic in Redux slices is correct.

The `docker-compose.dev.yml` file includes a `frontend-test` service. This service automatically runs the tests every time a Docker build is performed

Alternatively, you can also use the following command in `/frontend` directory to run the tests:

```
npm run test

```
