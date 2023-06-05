FROM node:18.10-alpine as build-step
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build
RUN ls

FROM nginx:alpine
COPY --from=build-step /app/dist/* /usr/share/nginx/html
RUN ls -ltR /usr/share/nginx/html