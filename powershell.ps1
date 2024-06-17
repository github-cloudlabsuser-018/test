resource "azurerm_resource_group" "example" {
    name     = "my-resource-group"
    location = "West US"
}

resource "azurerm_storage_account" "example" {
    name                     = "mystorageaccount"
    resource_group_name      = azurerm_resource_group.example.name
    location                 = azurerm_resource_group.example.location
    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags = {
        environment = "production"
    }
}