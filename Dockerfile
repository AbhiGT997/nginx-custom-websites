#Get Nginx latest package and install packages.

#It would also run update, nano & tree layers required to open up the container 

# Use the official NGINX base image
FROM nginx:latest

# Maintainer information (optional, but can be useful)
LABEL maintainer="root"

# Update package lists and install additional tools
RUN apt-get update && \
    apt-get install -y nano tree && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /usr/share/nginx/html

# Expose default HTTP port
EXPOSE 80

# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]

COPY <replace-with-folder-name> /usr/share/nginx/html

