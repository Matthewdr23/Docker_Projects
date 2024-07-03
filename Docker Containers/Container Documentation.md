# Docker Containers Documentation

## Table of Contents
1. [Introduction](#introduction)
2. [Installation](#installation)
3. [Basic Concepts](#basic-concepts)
4. [Docker Commands](#docker-commands)
    - [Images](#images)
    - [Containers](#containers)
    - [Networks](#networks)
    - [Volumes](#volumes)
5. [Dockerfile](#dockerfile)
6. [Docker Compose](#docker-compose)
7. [Best Practices](#best-practices)
8. [Troubleshooting](#troubleshooting)
9. [Additional Resources](#additional-resources)

## Introduction
Docker is a platform that allows developers to automate the deployment of applications inside lightweight, portable containers. Containers provide a consistent runtime environment and ensure that applications run the same way, regardless of where they are deployed.

## Installation
### On Windows and macOS
1. Download Docker Desktop from the [official Docker website](https://www.docker.com/products/docker-desktop).
2. Follow the installation instructions.
3. After installation, Docker should be running in your system tray.

### On Linux
1. Update your package database:
    ```sh
    sudo apt-get update
    ```
2. Install Docker:
    ```sh
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    ```
3. Verify the installation:
    ```sh
    docker --version
    ```

## Basic Concepts
- **Image**: A read-only template with instructions for creating a Docker container. Images are used to package applications and pre-configured server environments.
- **Container**: A runnable instance of an image. Containers can be started, stopped, moved, and deleted.
- **Dockerfile**: A text file that contains a series of commands to build a Docker image.
- **Docker Compose**: A tool for defining and running multi-container Docker applications using a YAML file.

## Docker Commands

### Images
- List images:
    ```sh
    docker images
    ```
- Pull an image:
    ```sh
    docker pull <image_name>
    ```
- Remove an image:
    ```sh
    docker rmi <image_name>
    ```

### Containers
- List running containers:
    ```sh
    docker ps
    ```
- List all containers (running and stopped):
    ```sh
    docker ps -a
    ```
- Run a container:
    ```sh
    docker run <image_name>
    ```
- Stop a container:
    ```sh
    docker stop <container_id>
    ```
- Remove a container:
    ```sh
    docker rm <container_id>
    ```

### Networks
- List networks:
    ```sh
    docker network ls
    ```
- Create a network:
    ```sh
    docker network create <network_name>
    ```
- Remove a network:
    ```sh
    docker network rm <network_name>
    ```

### Volumes
- List volumes:
    ```sh
    docker volume ls
    ```
- Create a volume:
    ```sh
    docker volume create <volume_name>
    ```
- Remove a volume:
    ```sh
    docker volume rm <volume_name>
    ```

## Dockerfile
A `Dockerfile` is a text document that contains all the commands to assemble an image.

Example `Dockerfile`:
```dockerfile
# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
