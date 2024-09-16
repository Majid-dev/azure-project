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

  client_id       = "122ec87c-07b5-46a5-bbbb-1a7540bec89e"
  client_secret   = "KSh8Q~AwDcVy3mwDytn5jkNmcRp3soV1jdoKTaey"
  tenant_id       = "919cd4d3-f836-4bbc-9bc0-a14661caa4af"
  subscription_id = var.azure_subscription_id
}