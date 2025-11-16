resource_group = {
  rg1 = {
    name     = "vikrant"
    location = "centralus"
  }
}
# storage_account_name = {
#   sa1 = {
#     storage_account_name     = "devstorageaccount1223"
#     resource_group_name      = "vikrant"
#     location                 = "centralus"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#     tags = {
#       environment = "dev"
#     }
#   }
# }
vnet = {
  vnet1 = {
    name                = "vikrant-vnet1"
    resource_group_name = "vikrant"
    location            = "centralus"
    address_space       = ["10.0.0.0/16"]
    subnets = [
      {
        name             = "frontend-subnet1"
        address_prefixes = ["10.0.1.0/24"]
      }

      ,{
        name             = "backend-subnet2"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}
machine = {
  vm1 = {
      machine_name = "dev-vm1"
    network_interface_name = "dev-nic1"
    subnet_name            = "frontend-subnet1"
    virtual_network_name   = "vikrant-vnet1"
    allocation_method      = "Static"
    pip_name               = "dev-pip1"
    resource_group_name    = "vikrant"
    location               = "centralus"
    size                   = "Standard_B1s"
    admin_username         = "adminuser"
    admin_password         = "P@ssw0rd1234!"
    disable_password_authentication = false
    source_image_reference = {
      publisher = "Canonical"
      offer     = "UbuntuServer"
      sku       = "18.04-LTS"
      version   = "latest"
    }
  }
    vm2 ={
       machine_name = "dev-vm2"
    network_interface_name = "dev-nic2"
    subnet_name            = "backend-subnet2"
    virtual_network_name   = "vikrant-vnet1"
    allocation_method      = "Static"
    pip_name               = "dev-pip2"
    resource_group_name    = "vikrant"
    location               = "centralus"
    size                   = "Standard_B1s"
    admin_username         = "adminuser"
    admin_password         = "P@ssw0rd1234!"
    disable_password_authentication = false
    source_image_reference = {
      publisher = "Canonical"
      offer     = "UbuntuServer"
      sku       = "18.04-LTS"
      version   = "latest"
    }
  }
}
  
