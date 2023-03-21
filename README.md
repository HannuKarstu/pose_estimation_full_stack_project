# Applying AI project

Kajaani UAS practice project

2023

# Requirements

Python 3.8.10 https://www.python.org/downloads/

Docker https://docs.docker.com/get-docker/

Poetry https://python-poetry.org/docs/

Node.JS and NPM https://docs.npmjs.com/downloading-and-installing-node-js-and-npm


# Starting the services in Docker containers

```
# Start backend, MongoDB and frontend in Docker containers
./build-and-start-services.sh
```


# Development

1. Clone repository

2. (optional) Create and activate Python virtual environment: https://docs.python.org/3/library/venv.html

3. Install Python dependencies: 

```
poetry install
```

4. Install frontend packages:

```
cd frontend

npm install
```


## Poetry

Add new dependency: 

```
poetry add <package name>==<version>
```

Add new dev dependency: 

```
poetry add <package name>==<version> -G dev
```


## Unit tests

```
python -m pytest tests
```

Tests can be also run from tests.ipynb notebook with VS Code debugger.

## Starting the services locally for development

1. Start backend (terminal 1): 

```
# Run backend as Python script
./run_backend_locally.sh
```

Backend will reload on code changes.

OR

```
# Start backend in Docker container
./backend-docker-start.sh
```


2. Start database (terminal 2): 

```
# Start database as a Docker container
./mongodb-docker-start.sh
```

To reinstate database, delete 'mongodbdata' folder locally and run the script again.


3. Start frontend (terminal 3): 

```
# Start frontend React application.
cd frontend
npm run start
```

Web application opens on http://localhost:3000

Frontend will reload on code changes.


# Authors

Hannu Karstu
Tensorflow team


# Licence

Open for all use
