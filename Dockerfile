# nginx state for serving content
FROM nginx:alpine
# Set working directory to nginx asset directory
WORKDIR /usr/share/nginx/html
# Remove default nginx static assets
RUN rm -rf ./*
# Copy static assets over
# COPY ./* ./
COPY . /usr/share/nginx/html
# COPY ./index.html /usr/share/nginx/html/index.html
COPY ./image /var/www/html/
# Containers run nginx with global directives and daemon off
ENTRYPOINT ["nginx", "-g", "daemon off;"]