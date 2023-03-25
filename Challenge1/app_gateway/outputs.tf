output "frontend_subnet_cidr" {
    value = azurerm_subnet.frontend.address_prefixes
}

output "backend_pool_id" {
    value = "${azurerm_application_gateway.frontend.id}/backendAddressPools/${local.backend_address_pool_name}"
}