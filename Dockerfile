# Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Copy the static website files to the Nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (Cloud Run will map this to its internal routing)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]