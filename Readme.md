# Terraform AWS Strapi Deployment

## Overview
This project demonstrates a modular Terraform setup to deploy a containerized Strapi application on AWS.

The infrastructure is designed using Terraform best practices with reusable modules, environment-based configuration, and clear separation of concerns.

## Architecture
- VPC with public and private subnets
- Application Load Balancer in public subnets
- EC2 instance in private subnet
- Security groups for controlled access
- Strapi application running via Docker using user_data

## Project Structure

    terraform-strapi-aws/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
└── modules/
├── vpc/
├── security_group/
├── ec2/
└── alb/


## Terraform Best Practices Used
- Modular design for reusability
- Variables and tfvars for environment separation
- No hardcoded values
- Clear input/output contracts between modules
- Root module used only for orchestration

## How to Run

    terraform init
    terraform validate
    terraform apply

