terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    version = "~> 3.0"
    }
  }
}

provider "azurerm" {
    features {}
}

terraform {
    backend "azurerm" {
      resource_group_name = "chris4jahn-tf-rg"   
      storage_account_name = "chris4jahnazuredevops"
      container_name = "terraform.tfstate`"
    }
}

data "azurerm_client_config" "current" {}