# 🌐 Nginx-Custom-Websites

## Pre-Requisites 🛠️

- Docker.io must be installed and set up.
- Ensure all necessary ports & firewalls are opened in case of Cloud VMs.
- Git must be installed on the VMs.
- Nano text-editor & Tree if needed.

## 🚀 Use Docker Containers to Develop and Deploy Custom Websites on Localhost/Cloud VMs

### Steps to Follow:

1. **Clone the Repository:**
   - Clone this repository to your local directory:
     ```sh
     git clone https://github.com/AbhiGT997/nginx-custom-websites.git
     ```
   - Navigate to the cloned repository:
     ```sh
     cd nginx-simple
     ```

2. **Select and Copy the Project:**
   - Navigate to the project files directory and select the project you want to deploy on Nginx:
     ```sh
     cd project-files/projects
     ```
   - Copy the selected project folder to the main directory:
     ```sh
     cp -r ~/nginx-simple/project-files/projects/<project-name> ~/nginx-simple
     ```

3. **Edit the Dockerfile:**
   - Open the Dockerfile in Nano:
     ```sh
     nano Dockerfile
     ```
   - Replace the `<replace-with-folder-name>` placeholder with the name of the selected project folder.
   - Ensure the folder containing HTML, CSS, JS, etc., files is in the `/nginx-simple` directory or customize the Dockerfile accordingly.

4. **Build the Docker Image:**
   - Build the Docker image using the following command:
     ```sh
     docker build -t nginx:1.0 .
     ```

5. **Run the Docker Container:**
   - Run the container with the following command:
     ```sh
     docker run -d -t --name nginx-custom-webcontent -p 7000:80 nginx:1.0
     ```
   - You can use a custom name and port if needed. In the example above, `7000` is the local port and `80` is the container port.

---

