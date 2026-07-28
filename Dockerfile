FROM nginx:alpine

# Remove the default NGINX configuration file
RUN rm /etc/nginx/nginx.conf

# Copy your custom configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080 to the Docker network
EXPOSE 8080

# Start NGINX in the foreground so the container stays active
CMD ["nginx", "-g", "daemon off;"]
