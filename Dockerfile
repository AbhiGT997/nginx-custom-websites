#Get Nginx latest package and install packages.

#It would also run update, nano & tree layers required to open up the container 

# Use the official NGINX base image
FROM nginx:latest

# Maintainer information (optional, but can be useful)
LABEL maintainer="root"

# Update package lists and install additional tools
RUN apt-get update && \
    apt-get install -y nano tree && \
    apt install -y apt-transport-https ca-certificates curl software-properties-common \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
    apt update \
    apt install -y docker-ce docker-ce-cli containerd.io \
    usermod -aG docker $USER
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /usr/share/nginx/html

# Expose default HTTP port
EXPOSE 80

# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]

COPY <replace-with-folder-name> /usr/share/nginx/html

