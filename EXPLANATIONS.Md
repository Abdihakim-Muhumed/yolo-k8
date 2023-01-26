# Kubernetes 
The project was deployed to run on Google Kubernetes Engine and the following is an explanation of how that was achieved.

## Kubernetes Objects.
### 1. Deployment
This was used to deploy the client and backend side of the project since both were stateless programs.

### 2. Statefulset
This was used to deploy the mongodb database for the application as it was a stateful database that needed to store products and cart details.

## Exposing the pods/deployments
The pods were exposed using a LoadBalancer type of service that is provided by the GKE

## Persistent Storage
Kubernetes' VolumeClaimTemplates were used so as to provide a persistent storage for mongodb database.