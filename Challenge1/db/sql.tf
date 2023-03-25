resource "azurerm_sql_server" "db" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "mradministrator"
  administrator_login_password = var.db_password

  tags = {
    environment = "test"
  }
}

resource "azurerm_sql_virtual_network_rule" "sqlvnetrule" {
  name                = "sql-vnet-rule"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_sql_server.db.name
  subnet_id           = azurerm_subnet.db.id
}