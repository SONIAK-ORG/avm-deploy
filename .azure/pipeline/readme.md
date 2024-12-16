# Readme

In order to use the pipeline to deploy this repo to Azure using ADO, you should only need to create a Service Principal on Azure with correct permissions, and then reference it within the pipeline in the azureSubscription input. You will also need to give the SP "Hierarchy Settings Administrator" permissions for Management Groups.

You will also need to add some values in to the terraform.tf file for each module:
```tf
provider "azapi" {
    client_id            = "value"
    client_secret        = "value"
    subscription_id      = "value"
    tenant_id            = "value"
}
```

While also doing the same for the azurerm provider
```tf
provider "azapi" {
    client_id            = "value"
    client_secret        = "value"
    subscription_id      = "value"
    tenant_id            = "value"
}
```
