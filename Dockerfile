FROM node:14.15-alpine as build-step
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build

FROM nginx:alpine
COPY --from=build-step /app/dist /usr/share/nginx/html/main/
RUN cd /usr/share/nginx/html/main/ && ls -ltR