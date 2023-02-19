# Online Marketplace Platform Infrastructure Code

## Description

This code creates the infrastructure of a one-stop online marketplace site using terraform.

## Prerequisites

- Install [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli). v2.45.0
- Install [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.3.8
- Install Powershell 7



## Running Terraform Locally

- Clone the project locally
- In your powershell terminal run `az login` to login to your azure account. Ensure you are in the correct subscription.
- Run `/scripts/set_access_key.ps1` to set your access_key to the tfstate backend stored in azure storage.
- Change to the `/terraform` directory.
- Run `terraform init`
- Run `terraform plan -out main.tfplan` to see your planned changes
- Run `terraform apply main.tfplan` to apply your changes to the cloud environment


## Configuring VSCode

- Install the most recent version of VSCode

## Project Wiki :
TODO

## Learn More

You can learn more about terraform by visiting the official documentation [here.](https://developer.hashicorp.com/terraform/docs).