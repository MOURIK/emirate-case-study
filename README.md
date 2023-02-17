# emirate-case-study
emirates case study for DevSecOps interview

## Content 
This repository contains :

1 - [WebApp_architecture.pptx](WebApp_architecture.pptx) file: The presentation contains the WebApp architecture and infrastructure deployment workflow

2 - [WebApp_architecture.drawio](WebApp_architecture.drawio) file: the schema used in the presentation which can be opened in draw.io web site

3 - [scripts](scripts) folder: It contains bash script that create initial S3 bucket to store tfstates files.

4 - [infra-modules](infra-modules) folder: It contains necessary terraform modules to deploy the webapp infrastructure (VPC, Subnets, ECS Clusters)

5 - [terraform-docs-hook.sh](terraform-docs-hook.sh) and [.pre-commit-config.yaml](.pre-commit-config.yaml) files: git commit hooks to generate automatically Readme files


## Target platform

To meet the new platform requirements, 2 solutions are possible. ECS (Elastic Container Service) or EKS (Elastic Kubernetes Service):

I choose ECS because:
- It is simpler to set up and manage, it is also considered easier to set up and manage than EKS, as it has a simpler architecture and a more streamlined user interface.
- Well integrated with other AWS services.
- It supports Docker natively.
- It can be recommended also for a small teams with limited DevOps expertise.
- I already had an experience using this solution

## Infrastructure deployment

To deploy the ECS cluster components, Terraform will be used.

Terraform is used because is cloud agnostic with a large community and it is open source technology.

Some Terraform modules are provided in this repository with code snippets.

## Auto-scaling & Monitoring

Monitoring will be performed using AWS cloud watch which is a fully managed service.

Amazon EC2 Auto Scaling will be used to create an auto scaling group with desired container instances. We can monitor the performance and adjust the configuration as needed to ensure that the scaling works as expected

Then create scaling policies based on CloudWatch alarms, which trigger based on CPU utilization or other metrics.

Once the alarm is triggered he auto scaling group will respond according to the scaling policies you have configured previously. New container instances will be launched or existing ones will be terminated in order to optimize costs

A minimum and maximum number of container instances for the auto scaling group can be configured, to ensure that we always have a certain number of container instances running.

## CICD pipeline

CICD Pipeline implemented using Github actions with workflow described in the presentation.

AWS IAM role is used to authenticate terraform in AWS in order to avoid usage of secret with rotation.

## Database choice

In order to have a platform globally distributed, Amazon RDS Aurora global database has been chosen. 

It emprove availability and disaster recovery. If one region becomes unavailable, the application can automatically failover to another region without interrupting user activity.

It also reduce latency. Users can connect to the database instance in the region that is closest to them,

We can configure a single endpoint for the database so it can be accessed from any region.

## DevSecOps approach

This part is not implemented in the code but i can give some details.

The idea is to implement security by design earlier as soon as the application is developed.

To reach this objectif we can implement tools such as checkmarx, veracode, spotbugs in order to perform SAST (Static Application Security Testing) in order to detect vulnerabilities in the source code.

DAST is recommended also in order to scan for vulnerabilities once the application is deployed.

We can use Trivy to scan vulnerabilities in docker images.

Dependency-checks plugin: to detect vulnerabilities in the application dependencies.

Finally a vulnerability management process must created to define all actions needed in every step.
