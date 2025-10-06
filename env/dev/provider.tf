terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}

provider "azurerm" {

  subscription_id = "cefa80e5-9af0-4e4a-9f43-e0a0491a5473"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }

}

