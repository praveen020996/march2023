variable "app_gateway_name" {
    description = "Name of the application gateway"
    type = string
}

variable "location" {
    description = "Location for app gateway"
    type = string
}

variable "frontend_subnet_cidr" {
    description = "Address space for the subnet that will host the application gateway"
    type = list(string)
}

variable "vnet_name" {
    description = "Name of the Virtual Network"
    type = string
}

variable "resource_group_name" {
    description = "Name of the Resource Group where the app gateway will be created"
    type = string
}
