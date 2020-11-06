[![Udacity](https://circleci.com/gh/CircleCI-Public/circleci-cli.svg?style=svg)](https://app.circleci.com/pipelines/github/Ahmad-Madi/Operationalize-a-Machine-Learning-Microservice-API.)

## Project Summary 

This project is an implimentation of "Microservices at Scale using AWS & Kubernetes" course contents where we can apply concepts like containerizing an existing application and deploy it using kubernetes and automatically lint and load test the application before the deployment using CicleCI.


## Instructions to run the project

1. Before you run the following command, make sure you follow minikube installation instructions [here](https://minikube.sigs.k8s.io/docs/start/) then run this command to create a local kubernetes cluster:
```
minikube start
```

2. Deploy the application in a kubernetes Pod:
```
./run_kubernetes.sh
```

3. Now the app is running and listening on the configured port 80, to make a prediction, run the following command:
```
./make_prediction2.sh
```

4. After you finish, delete the cluster:
```
minikube delete
```


## Repository Content explanation

- app.py: A python file that contains the app logic that makes the prediction.
- Dockerfile: Configuration file to build docker image from an existing application.
- Makefile: Contains the basic commands to create the virtual environment and lint the scrips.
- make_prediction.sh: A bash script to call the deployed app and send data to return the prediction.
- requirements.txt: List of python libraries that need to be installed before using the app.
- run_docker.sh: A bash script to run the created docker container locally.
- run_kubernetes.sh: A bash script to create a local kubernetes cluster.
- upload_docker.sh: A bash script to upload the created docker image to docker hub.
- .circleci/config.yml: CircleCI configuration file that contains all steps needed to be done automatically.
