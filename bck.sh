#!/bin/bash

RESOURCE_GROUP_NAME=gunjan-dev-rg
STORAGE_ACCOUNT_NAME=gunjandevstg$RANDOM
CONTAINER_NAME=gunjandevcontainer

az group create --name $RESOURCE_GROUP_NAME --location eastus

az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME