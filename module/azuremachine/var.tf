variable "machine" {
  description = "Map of VM configurations"
  type = map(object({
    pip_name               = string
    allocation_method      = string
    network_interface_name = string  
    subnet_name            = string
    virtual_network_name   = string
    machine_name         = string   
    resource_group_name    = string
    location               = string
    size                   = string
  
    disable_password_authentication = bool
    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))
}