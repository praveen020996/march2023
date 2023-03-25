module "app_gateway" {
    source = "./app_gateway"
    app_gateway_name = var.app_gateway_name
    location = var.location
    frontend_subnet_cidr = var.frontend_subnet_cidr
    vnet_name = azurerm_virtual_network.vnet.name
    resource_group_name = azurerm_resource_group.rg.name
}

module "web" {
    source = "./web"
    vmss_name = "webvmss"
    resource_group_name = azurerm_resource_group.rg.name
    location = var.location
    vnet_name = azurerm_virtual_network.vnet.name
    web_subnet_cidr = var.web_subnet_cidr
    frontend_subnet_cidr = module.app_gateway.frontend_subnet_cidr
    vm_password = var.vm_password
    backend_pool_id = module.app_gateway.backend_pool_id
}

module "app" {
    source = "./app"
    vmss_name = "appvmss"
    resource_group_name = azurerm_resource_group.rg.name
    location = var.location
    vnet_name = azurerm_virtual_network.vnet.name
    app_subnet_cidr = var.app_subnet_cidr
    web_subnet_cidr = module.web.web_subnet_cidr
    vm_password = var.vm_password
}

module "db" {
    source = "./db"
    sql_server_name = var.sql_server_name
    resource_group_name = azurerm_resource_group.rg.name
    location = var.location
    vnet_name = azurerm_virtual_network.vnet.name
    db_subnet_cidr = var.db_subnet_cidr
    app_subnet_cidr = module.app.app_subnet_cidr
    db_password = var.db_password
}