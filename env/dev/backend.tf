terraform {
  backend "azurerm" {
    resource_group_name = "gunjan-dev-rg"
    storage_account_name = "gunjandevstg22561"                                # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "gunjandevcontainer"                                 # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "TF-dev.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
