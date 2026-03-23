# Simple Flask Task Manager

A basic Flask web application with a simple task management UI.

## Setup

### Option 1: Run Locally

1. Install dependencies:
```bash
pip install -r requirements.txt
```

2. Run the application:
```bash
python app.py
```

3. Open your browser and navigate to:
```
http://localhost:5000
```

### Option 2: Run with Docker

1. Build the Docker image:
```bash
docker build -t flask-task-manager .
```

2. Run the container:
```bash
docker run -p 5000:5000 flask-task-manager
```

3. Open your browser and navigate to:
```
http://localhost:5000
```

## Features

- Add tasks
- View all tasks
- Delete tasks
- Clean, responsive UI
