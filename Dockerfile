FROM nginx:alpine

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files to nginx
COPY . /usr/share/nginx/html/tools-collector

# Remove unnecessary files from the image
RUN rm -f /usr/share/nginx/html/tools-collector/Dockerfile \
    /usr/share/nginx/html/tools-collector/nginx.conf \
    /usr/share/nginx/html/tools-collector/.dockerignore \
    /usr/share/nginx/html/tools-collector/README.md

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
