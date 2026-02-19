FROM nginx:alpine

# Copy static files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY plane.png /usr/share/nginx/html/
COPY vehicle.png /usr/share/nginx/html/

# Also serve plane.png at /images/plane.png for favicon
RUN mkdir -p /usr/share/nginx/html/images && \
    cp /usr/share/nginx/html/plane.png /usr/share/nginx/html/images/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
