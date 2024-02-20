#stage 1
FROM node:16-alpine as build
WORKDIR /app
COPY package.json .
COPY . .
RUN  npm install
RUN npm run build

#stage 2
FROM nginx:alpine
WORKDIR usr/share/nginx/html/
COPY   --from=build /app/build .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
