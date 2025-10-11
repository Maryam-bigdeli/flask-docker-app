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

