# Menyediakan Azure sebagai provider
terraform {
  required_version = ">=0.12"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Mendefinisikan resource group yang sudah ada
resource "azurerm_resource_group" "existing_rg" {
  name = "rg-ian"
  location = "Southeast Asia"
}

# Memanggil module VM
module "vm_module" {
  source          = "./modules/vm_module"
  resource_group_name = resource.azurerm_resource_group.existing_rg.name
  location            = resource.azurerm_resource_group.existing_rg.location
  public_key_path     = "D:/Terraform sample/IanTesting/Test/yes.pub"
}

