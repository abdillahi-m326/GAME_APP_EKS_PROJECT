# Stage 1 - build
FROM node:22-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

# RUN npm run build

# Stage 2 - serve
FROM nginx:alpine

COPY --from=build /app/index.html /usr/share/nginx/html/
COPY --from=build /app/js /usr/share/nginx/html/js
COPY --from=build /app/style /usr/share/nginx/html/style
COPY --from=build /app/meta /usr/share/nginx/html/meta
COPY --from=build /app/favicon.ico /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]