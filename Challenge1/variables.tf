variable "resource_group_name" {
    description = "Name of the Resource Group where the resources are to be created"
    type = string
}

variable "location" {
    description = "Location where the resources are to be created"
    type = string
}

variable "vnet_name" {
    description = "Name of the Virtual Network"
    type = string
}

variable "vnet_cidr" {
    description = "Address space for the VNET"
    type = list(string)
}

variable "frontend_subnet_cidr" {
    description = "Address space for the subnet that will host the application gateway"
    type = list(string)
}

variable "web_subnet_cidr" {
    description = "Address space for the subnet that will host the web servers"
    type = list(string)
}

variable "app_subnet_cidr" {
    description = "Address space for the subnet that will host the app servers"
    type = list(string)
}

variable "db_subnet_cidr" {
    description = "Address space for the subnet that will host the database"
    type = list(string)
}

variable "app_gateway_name" {
    description = "Name of the application gateway"
    type = string
}

variable "vm_password" {
    description = "Password for the Virtual Machine"
    type = string
}

variable "db_password" {
    description = "Password for the SQL server"
    type = string
}

variable "sql_server_name" {
    description = "Name of the SQL server"
    type = string
}