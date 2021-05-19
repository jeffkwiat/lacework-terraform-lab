# Lacework Terraform Lab
This lab walks through how to setup AWS, Azure, and GCP agentless integrations for Compliance and Cloud Security.
## Prerequisites
This lab is running on a Macbook Pro laptop.  If you would like to follow along, the following software is required:


## Amazon Web Services (AWS)
### Authentication
Authentication for AWS requires an `access_key` and a `secret_key`, which you can get from the AWS console, when you 
create an IAM user.
### What this repository does?
We configure the agent-less Lacework integration to pull Compliance and Configuration, as well as the CloudTrail 
integration for User/API Behavior analytics.
### How to deploy the integrations
- Ensure the Prerequisties are downloaded/installed onto the host you are running Terraform
- Run `terraform init` to download the Terraform providers/modules for AWS and Lacework.
- Run `terraform plan` to see what resources will be deployed into your environment
- Run `terraform apply` to deploy those resources to your AWS environment and configure the Lacework integration

## Microsoft Azure
### Authentication
Authentication for Azure occurs via the Azure CLI
- Run `az login`
- Complete authentication within the browser
- This must be done before `terraform apply` will work
### What this repository does?
We configure the agent-less Lacework integration to pull Compliance and Configuration, as well as the Audit Log 
integration for User/API Behavior analytics.
### How to deploy the integrations
- Ensure the Prerequisties are downloaded/installed onto the host you are running Terraform
- Run `terraform init` to download the Terraform providers/modules for AWS and Lacework.
- Run `terraform plan` to see what resources will be deployed into your environment
- Run `terraform apply` to deploy those resources to your AWS environment and configure the Lacework integration

## Google Cloud Platform (GCP)
### Authentication
Authentication for GCP occurs via a JSON credential file, you download from the Google Cloud Console in JSON format.
### What this repository does?
We configure the agent-less Lacework integration to pull Compliance and Configuration, as well as the Audit Trail 
integration for User/API Behavior analytics.
### How to deploy the integrations
- Ensure the Prerequisties are downloaded/installed onto the host you are running Terraform
- Run `terraform init` to download the Terraform providers/modules for AWS and Lacework.
- Run `terraform plan` to see what resources will be deployed into your environment
- Run `terraform apply` to deploy those resources to your AWS environment and configure the Lacework integration
