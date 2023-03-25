output "app_subnet_cidr" {
    value = azurerm_subnet.app.address_prefixes
}