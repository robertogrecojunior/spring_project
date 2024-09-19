# Deploying Microservices on Kubernetes Using Helm

## Overview

This document outlines the steps to successfully deploy containerized microservices on a Kubernetes cluster using Helm.

## Steps to Deploy

### 1. Helm Chart Setup

The microservice is defined using a Helm chart located in the `helm-charts/microservice-chart` directory. The chart contains the following files:

- `Chart.yaml`: Defines the chart metadata.
- `values.yaml`: Contains configuration values, such as the image repository and replica count.
- Templates: Defines Kubernetes resources such as Deployments, Services, and Ingress.

### 2. Deployment Process

The following steps were used to deploy the microservice:

1. **Install Helm chart**:

   The Helm chart was installed on a Kubernetes cluster using the following command:

   ```bash
   helm install microservice-deploy ./helm-charts/microservice-chart

This command deployed the microservice and created the necessary resources such as Pods, Services, and Deployments.

### Verify Pod Status:

After the deployment, the status of the pods was checked to ensure they were running:

```bash
kubectl get pods

**Output:**
NAME                                                READY   STATUS    RESTARTS        AGE
microservice-microservice-deploy-7f897c68dc-9p9vs   1/1     Running   0               80s
microservice-microservice-deploy-7f897c68dc-nj5cp   1/1     Running   0               76s
