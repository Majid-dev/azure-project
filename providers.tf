terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b8688ce2-38ca-4843-83dd-abf140629469"
}
