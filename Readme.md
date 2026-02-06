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
