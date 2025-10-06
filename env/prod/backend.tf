terraform {
  backend "azurerm" {
    resource_group_name = "gunjan-prod-rg"
    storage_account_name = "gunjanprodstg9515"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "gunjanprodcontainer"                                 # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "TF-prod.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
