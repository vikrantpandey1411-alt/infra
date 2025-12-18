terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.53.0"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = "589a7079-eb94-4233-bdeb-7b71e1455f82"
}
terraform {
  backend"azurerm" {
  resource_group_name  = "vikrant"
  storage_account_name = "viksrtg1"
  container_name       = "infra"
  key                  = "newproject/dev/terraform.tfstate"
}
}