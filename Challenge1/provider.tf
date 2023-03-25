terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  #Uncomment the following lines to store state file in a storage account
  # backend "azurerm" {
  #   resource_group_name  = "<>"
  #   storage_account_name = "<>"
  #   container_name       = "<>"
  #   key                  = "terraform.tfstate"
  # }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}