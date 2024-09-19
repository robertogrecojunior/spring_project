# Multi-Environment Infrastructure with Terraform, Terragrunt, and CI/CD

## Overview

This project demonstrates the design, implementation, and automation of a multi-environment infrastructure (development, staging, production) using Terraform and Terragrunt, integrated with a CI/CD pipeline (Azure DevOps). Each environment is isolated and consists of:

- VPC (Virtual Private Cloud) / Networking
- EC2 instances (or containers)
- Load Balancers
- RDS (Relational Database Service)
- S3 Buckets or similar storage

Each environment shares common Terraform modules to ensure consistency and reusability, while allowing environment-specific customizations.

## Project Structure

The project follows a clear directory structure to separate environment-specific configurations from reusable modules:

```
├── live
│   ├── dev
│   │   ├── vpc
│   │   ├── ec2
│   │   ├── rds
│   │   └── outputs.tf
│   ├── staging
│   │   ├── vpc
│   │   ├── ec2
│   │   ├── rds
│   │   └── outputs.tf
│   └── production
│       ├── vpc
│       ├── ec2
│       ├── rds
│       └── outputs.tf
└── modules
    ├── vpc
    ├── ec2
    └── rds

