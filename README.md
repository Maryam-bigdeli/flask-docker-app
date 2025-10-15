# Flask Docker App

A simple Flask application containerized with Docker.

## 📋 Prerequisites

- Docker installed on your system
- Python 3.9+ (for local development)

## 🚀 Getting Started

### Build Docker Image

```bash
docker build -t flask-docker-app .
```

### Run Container

```bash
docker run -p 5000:5000 flask-docker-app
```
```bash
docker run -p 80:5000 flask-docker-app
```

The application will be available at `http://localhost:5000`
The application will be available at `http://localhost:80`

## 📁 Project Structure

```
.
├── app.py              # Main Flask application
├── requirements.txt    # Python dependencies
└── Dockerfile         # Docker configuration
```

## 🛠️ Local Development

To run without Docker:

```bash
pip install -r requirements.txt
python app.py
```

## 📝 Description

This project is a simple Flask API containerized with Docker, ensuring it runs consistently across different environments.

## 📚 Resources

- [Docker Documentation](https://www.geeksforgeeks.org/devops/dockerize-your-flask-app/)


### Second-Task:
write a docker compose for the current repo you have, which still uses the dockerfile you already have

---

## 🐳 Run the Flask App with Docker Compose

This project includes a Dockerfile that containerizes the Flask application.
To simplify the build and run process, you can use Docker Compose.

### 📦 Prerequisites

Before running the app, make sure:

* Docker Desktop is installed and running.

* WSL 2 integration is enabled (for Windows users).

* You are inside the project directory that contains both Dockerfile and docker-compose.yml.
---


### 🚀 Build and Run Using Docker Compose

To build and start the Flask container:
```bash
docker compose up --build
```
This command will:

1. Build the image based on the existing Dockerfile.

2. Start the container defined in docker-compose.yml.

3. Map the internal container port 5000 to your local port 5000.


Once the container is up, open your browser and visit:
```bash
http://localhost:5000
```
You should see your Flask app running.

---

### 🧰 Useful Commands
| Command                                      | Description                                       |
| -------------------------------------------- | ------------------------------------------------- |
| `docker compose up --build`                  | Build the image and start the container           |
| `docker compose down`                        | Stop and remove containers, networks, and volumes |
| `docker ps`                                  | List all running containers                       |
| `docker logs <container_name>`               | View container logs                               |
| `docker exec -it <container_name> /bin/bash` | Open a terminal inside the running container      |

---

### ⚠️ Important Notes

* Ensure your Flask app runs on host 0.0.0.0 inside the code:
```bash
app.run(host="0.0.0.0", port=5000)
```
This allows access from outside the container.

* If you’re using Windows + WSL 2, enable integration in Docker Desktop:

Settings → Resources → WSL Integration → Enable Ubuntu.

* For production, use a proper WSGI server (e.g., Gunicorn) instead of Flask’s built-in development server.
