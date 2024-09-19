#!/bin/bash
echo "Deploying infrastructure..."
kubectl apply -f infrastructure/load_balancer.yaml
kubectl apply -f infrastructure/auto_scaling.yaml

echo "Deploying stateless web app..."
kubectl apply -f stateless-web-app/deployment.yaml

echo "Configuring stateful backend..."
kubectl apply -f stateful-backend/db-config.yaml

echo "Setting up monitoring..."
kubectl apply -f monitoring/cloudwatch-config.yaml

echo "Deployment complete!"

