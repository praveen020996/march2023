resource "azurerm_lb" "internal" {
  name                = "InternalLoadBalancer"
  location            = var.location
  resource_group_name = var.resource_group_name
  frontend_ip_configuration {
    name                 = "SubnetAssociation"
    subnet_id            = azurerm_subnet.app.id
  }
}

resource "azurerm_lb_backend_address_pool" "internal" {
  loadbalancer_id = azurerm_lb.internal.id
  name            = "BackEndAddressPool"
}

resource "azurerm_lb_probe" "probe" {
  name                = "tcp-probe"
  protocol            = "Tcp"
  port                = 80
  loadbalancer_id     = azurerm_lb.internal.id
}

resource "azurerm_lb_rule" "app_lb_rule_app1" {
  name                           = "testrule"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = azurerm_lb.internal.frontend_ip_configuration[0].name
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.internal.id]
  probe_id                       = azurerm_lb_probe.probe.id
  loadbalancer_id                = azurerm_lb.internal.id
}