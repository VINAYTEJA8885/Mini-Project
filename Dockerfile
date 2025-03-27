# Use Nginx to serve static HTML files
FROM nginx:alpine

# Copy all files (including index.html) to the default Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 (Nginx listens on this port)
EXPOSE 80
