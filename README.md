# emirate-case-study
emirates case study for DevSecOps interview

## Content 
This repository contains :

1 - [WebApp_architecture.pptx](WebApp_architecture.pptx) file: The presentation contains the WebApp architecture and infrastructure deployment workflow

2 - [WebApp_architecture.drawio](WebApp_architecture.drawio) file: the schema used in the presentation which can be opened in draw.io web site

3 - [scripts](scripts) folder: It contains bash script that create initial S3 bucket to store tfstates files.

4 - [infra-modules](infra-modules) folder: It contains necessary terraform modules to deploy the webapp infrastructure (VPC, Subnets, ECS Clusters)

5 - [terraform-docs-hook.sh](terraform-docs-hook.sh) and [.pre-commit-config.yaml](.pre-commit-config.yaml) files: git commit hooks to generate automatically Readme files