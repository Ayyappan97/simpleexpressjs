git clone https://github.com/Ayyappan97/simpleexpressjs.git - To import my Source code into DockerFile for image Build

cd /simpleexpressjs - Switcing to my index.js path inside my container

export PROJECT_ID=chromatic-tree-278610 = To use my GCP Project ID which I am currently working on

docker build -t gcr.io/${PROJECT_ID}/dockerfile:v1 . Image Build using my DockerFile

docker images - To List all docker images

docker run --rm -p 8080:3000 gcr.io/${PROJECT_ID}/dockerfile:v1 To run the docker image

curl http://localhost:8080 To check whether is working inside the container

gcloud auth configure-docker - Login to GIR Google Image registry

docker push gcr.io/${PROJECT_ID}/dockerfile:v1 - Push my image into GCR

kubectl create deployment hello-app --image=gcr.io/${PROJECT_ID}/dockerfile:v1 - To create deployment using YAML config


kubectl get pods - To List the pods

kubectl expose deployment hello-app --name=hello-app-service --type=LoadBalancer --port 3000 --target-port 8080 - Expose my Application outside the Cluster


