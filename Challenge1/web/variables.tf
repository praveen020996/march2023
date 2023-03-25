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

variable "web_subnet_cidr" {
    description = "Address space for the subnet that will host the app servers"
    type = list(string)
}

variable "frontend_subnet_cidr" {
    description = "Address space for the subnet that will host the app gateway"
    type = list(string)
}

variable "vm_password" {
    description = "Password for the Virtual Machine"
    type = string
}

variable "backend_pool_id" {
    description = "Backend Pool Id of app gateway"
    type = string
}