variable "vnet" {
#   description = "A map of virtual network configurations"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
    subnets = list(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
  
}