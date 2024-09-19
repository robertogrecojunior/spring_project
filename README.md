# Highly Available, Auto-Scaling Infrastructure for Stateless Web Application with Stateful Backend

## Overview

This project demonstrates how to build a highly available, auto-scaling infrastructure for a stateless web application with a stateful backend. The infrastructure is designed to ensure reliability, scalability, and fault tolerance.

## Core Components

- **Load Balancer (LB)**: Distributes traffic across multiple instances to ensure high availability.
- **Auto-Scaling Group (ASG)**: Dynamically scales instances based on traffic load.
- **Stateless Web Application Layer**: Web servers that handle requests without maintaining session state.
- **Stateful Backend**: Persistent storage for user data and other stateful resources.
- **Monitoring**: Tools like AWS CloudWatch or Azure Monitor for performance tracking and alerts.

## Infrastructure Design

### 1. Load Balancer
- **Elastic Load Balancer (ELB)**: Routes traffic across instances in multiple availability zones.
- **Health Checks**: Monitors the health of instances, routing traffic only to healthy ones.

### 2. Auto-Scaling Group (ASG)
- **Auto-Scaling Policies**:
  - Scale-Out: Adds instances when CPU or traffic exceeds a threshold.
  - Scale-In: Reduces instances when demand drops.
- **Multi-AZ Deployment**: Instances are distributed across multiple availability zones to ensure high availability.

### 3. Stateless Web Application Layer
- **EC2 Instances or Containers**: Stateless web servers that handle requests without storing session data.
- **Kubernetes Deployment**: The stateless web app is deployed in a Kubernetes cluster for scalability and high availability.

### 4. Stateful Backend
- **Database**: Managed services like Amazon RDS or DynamoDB, with multi-AZ replication for high availability.
- **Object Storage**: Use Amazon S3 or Azure Blob Storage for file storage.
- **Backups**: Automated backups with cross-AZ replication for data durability.

### 5. VPC and Networking
- **Public/Private Subnets**: Public-facing components (e.g., load balancer) are isolated from private components (e.g., databases) for security.
- **NAT Gateway**: Allows instances in private subnets to securely access external resources.

---

## Project Structure

highly-available-app/
├── README.md                     # Documentação explicando o projeto
├── deploy.sh                     # Script de automação do deploy
├── infrastructure/               # Configurações de infraestrutura
│   ├── load_balancer.yaml         # Exemplo de configuração de load balancer
│   ├── auto_scaling.yaml          # Configuração de Auto-Scaling Group
│   ├── vpc.yaml                   # Rede (VPC, subnets, NAT Gateway)
├── stateless-web-app/             # Aplicação sem estado
│   ├── Dockerfile                 # Dockerfile para a aplicação
│   ├── deployment.yaml            # Arquivo de deployment para Kubernetes
├── stateful-backend/              # Backend com estado
│   ├── db-config.yaml             # Configuração do banco de dados
│   └── storage-config.yaml        # Configuração de armazenamento (ex: S3)
└── monitoring/                    # Monitoramento e alertas
    └── cloudwatch-config.yaml     # Configuração para monitoramento

