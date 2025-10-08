terraform {
  backend "azurerm" {
    resource_group_name   = "asr-primary-dev"          # Resource group of the storage account
    storage_account_name  = "okekestorage"            # Your storage account
    container_name        = "tfstatefile"            # Your storage container
    key                  = "terraform.tfstate"      # State file name
    use_azuread_auth     = true
    use_oidc             = true
  }
}


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id     = var.subscription_id
  storage_use_azuread = true
}
