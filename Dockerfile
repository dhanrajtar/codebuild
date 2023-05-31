# Use the official nginx image as the base image
FROM nginx:latest

# Copy custom configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy static files to the container (if needed)
# COPY ./static /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

