terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Sumit_Backend_RG"
    storage_account_name = "mystate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    subscription_id      = "b4461466-1e6b-4be2-bb70-1e96a72a41c8"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b4461466-1e6b-4be2-bb70-1e96a72a41c8"
}
