# Use official tiny nginx image
FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy our redirect rules into the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 for Coolify to map
EXPOSE 80

# Run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
