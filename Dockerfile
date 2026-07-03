# Use the official lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Copy the static website files into the default Nginx public directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Expose port 80 to access the website
EXPOSE 80

# Start Nginx in the foreground so the container keeps running
CMD ["nginx", "-g", "daemon off;"]
