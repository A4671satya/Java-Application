# Deploy Java Application on AWS – 3-Tier Architecture (Terraform)
 Project Overview

This project demonstrates the deployment of a production-grade Java web application on AWS using a 3-Tier Architecture, fully automated with Terraform (Infrastructure as Code).

The architecture follows AWS best practices for scalability, security, availability, and maintainability.

 Architecture Summary

The application is divided into three independent tiers:

# Deploy Java Application on AWS 3-Tier Architecture

![AWS Architecture](https://imgur.com/b9iHwVc.png)

## 1 Presentation Tier (Frontend)

 - Nginx Web Servers

- Auto Scaling Group

- Public Application Load Balancer

- Public Subnets

- Internet Gateway

## 2 Application Tier (Backend)

- Apache Tomcat (Java Application)

- Auto Scaling Group

- Internal Load Balancer

- Private Subnets

- Session management via Redis (optional)

# 3 Data Tier

- Amazon RDS MySQL

- Multi-AZ Deployment

- Automated Backups

- Private Subnets

# Network Design

- Two VPCs:

- Frontend VPC: 192.168.0.0/16

- Backend VPC: 172.32.0.0/16

- Public & Private subnets across multiple AZs

- Secure communication using Security Groups

- Optional Transit Gateway for VPC-to-VPC connectivity

# Security Features

- Tier-based Security Groups (least privilege)

- Private subnets for backend & database

- No direct public access to application or database

- IAM roles for EC2 access

- Data encryption at rest and in transit

# Technologies Used
Category	Tools / Services
Cloud Provider	AWS
IaC	Terraform
Web Server	Nginx
App Server	Apache Tomcat
Language	Java
Database	Amazon RDS (MySQL)
Scaling	Auto Scaling Group
Load Balancing	Application Load Balancer
Monitoring	Amazon CloudWatch
# Project Structure
 aws-3tier-terraform/
 
├── provider.tf

├── variables.tf

├── vpc.tf

├── security-groups.tf

├── alb.tf

├── asg-frontend.tf

├── asg-backend.tf

├── rds.tf

├── outputs.tf

└── README.md

# Prerequisites

- AWS Account

- IAM User with Admin access

- AWS CLI configured

- Terraform installed (v1.x)

- Key pair created in AWS

### Deployment Steps
1 Clone Repository
git clone https://github.com/A4671satya/Java-Application.git
```
cd aws-3tier-terraform
```
### 2 Initialize Terraform
```
terraform init
```
### 3 Validate Configuration
```
terraform validate
```
### 4 Preview Infrastructure
```
terraform plan
```
### 5 Deploy Infrastructure
```
terraform apply
```



# Access Application

After deployment, Terraform outputs the Load Balancer DNS name.

http://<frontend-alb-dns-name>

# Monitoring & Scaling

- Auto Scaling based on CPU utilization

- CloudWatch metrics and alarms

- High availability across multiple AZs

-  Success Criteria

-  Application accessible via public URL
-  Auto Scaling works under load
-  Database connectivity established
-  Secure network isolation
 - Production-ready architecture




#  Author

PUPPALA SATYA

Java | AWS | DevOps

