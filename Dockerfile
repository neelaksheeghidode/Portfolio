# ========================================================
# PRODUCTION DOCKERFILE - NGINX ALPINE FOR DEVOPS PORTFOLIO
# ========================================================
FROM nginx:alpine

# Set working directory to Nginx html directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static assets
RUN rm -rf ./*

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy all website assets, pages, styles, and videos
COPY . .

# Expose HTTP port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
