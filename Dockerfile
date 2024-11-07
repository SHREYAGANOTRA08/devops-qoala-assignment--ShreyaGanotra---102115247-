FROM nginx:latest

# Copy the nginx.conf file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the html folder from nginx directory to the container's nginx html directory
COPY nginx/html /usr/share/nginx/html

# Expose port 80 for Nginx
EXPOSE 80

# Run Nginx in the foreground (no daemon mode)
CMD ["nginx", "-g", "daemon off;"]
