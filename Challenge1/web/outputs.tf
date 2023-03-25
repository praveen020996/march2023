output "web_subnet_cidr" {
    value = azurerm_subnet.web.address_prefixes
}