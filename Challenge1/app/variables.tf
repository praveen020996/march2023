variable "vmss_name" {
    type = string
    description = "Name of the virtual machine scale set"
}

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

variable "app_subnet_cidr" {
    description = "Address space for the subnet that will host the app servers"
    type = list(string)
}

variable "web_subnet_cidr" {
    description = "Address space for the subnet that will host the web servers"
    type = list(string)
}

variable "vm_password" {
    description = "Password for the Virtual Machine"
    type = string
}

