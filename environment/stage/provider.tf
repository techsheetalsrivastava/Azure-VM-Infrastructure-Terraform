terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "a87c6699-9b7e-4873-a0c4-8660499ba9ea"
}