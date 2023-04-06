# anime_recommender/frontend/Dockerfile
ARG NODE_IMAGE=node:14.18.3
ARG TARGET_STAGE=production

# TARGET: builder
FROM $NODE_IMAGE AS build

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .
RUN npm run build

# TARGET: development
FROM $NODE_IMAGE AS development

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

# TARGET: production
FROM nginx:stable-alpine AS production

COPY --from=build /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

FROM ${TARGET_STAGE}
