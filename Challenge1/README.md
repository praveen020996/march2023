# TechChallenge 2023

## Overview 

This respository contains terraform code to create a simple 3 tier architecture for web applications on Azure Cloud.

## Architecture

![techchallenge drawio](https://user-images.githubusercontent.com/42564839/227702669-d6256cd6-7f6c-4466-a621-e63ecc46f492.png)

The terraform code creates the following resources on Azure:

- Resource Group
- Virtual Network
- 4 Subnets - Frontend, Web, App, DB
- Application Gateway in Frontend subnet
- Virtual Machine Scale Set in Web subnet(Backend for Application Gateway)
- Internal Load Balancer in App Subnet
- Another Virtual Machine Scale Set in App Subnet(Backend for Internal Load Balancer)
- SQL server in DB subnet
- NSG for each subnet. Only Frontend subnet allows traffic from internet. All other subnets allow traffic only from the upstream subnet

## How to run

- Install terraform
- Install azure cli
- Clone the repo
- Open a terminal from the foldr that contains main.tf
- Run following commands
```
#To login to Azure Cloud
az login

#Initialize the terraform code to download all required plugins
terraform init

#Check the plan 
terraform  plan

#Create infrastructure
terraform apply

#To delete the infrastucture
terraform destroy
```