terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.8.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "78ad6276-848e-4118-bbff-81f823e4db4b"
  features {
    
  }
}

# terraform {
#   backend "azurerm" {
#     resource_group_name  = "rgtodo1"
#     storage_account_name = "cerrebal0708"
#     container_name       = "tfstate"
#     key                  = "dev.terraform.tfstate"
#   }
# }