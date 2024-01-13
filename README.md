# Fyle Backend Challenge
## Table of Contents

- [Installation](#installation)
  - [Clone Repository](#1-clone-repository)
  - [Setup Virtual Environment](#2-setup-virtual-environment)
  - [Install Requirements](#3-install-requirements)
  - [Reset Database](#4-Reset-Database)
- [Usage](#usage)
  - [Running the Server](#running-the-server)
  - [Running Tests](#running-tests)
- [Docker Installation](#docker-installation)
    - [Build Docker Image](#1-build-docker-image)
    - [Run Docker Container](#2-run-docker-container)
- [Docker Compose](#docker-compose)
    - [Build and Run with Docker Compose](#1-build-and-run-with-docker-compose)
    - [Stop Docker Compose](#2-stop-docker-compose)

## Installation

### 1. Clone Repository

```bash
git clone fyle-interview-intern-backend.git
cd fyle-interview-intern-backend
```

### 2. Setup Virtual Environment

```bash
virtualenv env --python=python3.8
source env/bin/activate
```

### 3. Install Requirements
```bash
pip install -r requirements.txt
```

### 4. Reset Database
```bash
export FLASK_APP=core/server.py
rm core/store.sqlite3
flask db upgrade -d core/migrations/
```

## Usage

### Running the Server
```bash
bash run.sh
```
The server will be accessible at http://localhost:7755.

### Running Tests

```bash
pytest -vvv -s tests/

# for test coverage report
# pytest --cov
# open htmlcov/index.html
```
Note - Reset DB before running the Tests


## Docker Installation

### 1. Build Docker Image

```bash
sudo docker build -t fyle-backend-challenge:latest .
```
### 2. Run Docker Container
```bash
sudo docker run -p 7755:7755 fyle-backend-challenge:latest
```
## Docker Compose

### 1. Build and Run with Docker Compose

```bash
sudo docker-compose up -d
```
The server will be accessible at http://localhost:7755.

### 2. Stop Docker Compose

```bash
sudo docker-compose down
```