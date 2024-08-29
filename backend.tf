terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-resource-group"
    storage_account_name  = "tfstatestorageaccount"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}
