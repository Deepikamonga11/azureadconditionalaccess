terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">=2.50.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "azuread" {
  # Uses credentials from azurerm provider
}
