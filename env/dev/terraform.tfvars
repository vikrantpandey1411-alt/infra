resource_group = {
  rg1 = {
    name     = "vikrantinfra"
    location = "centralindia"
  }
}
# storage_account_name = {
#   sa1 = {
#     storage_account_name     = "devstorageaccount1223"
#     resource_group_name      = "vikrantinfra"
#     location                 = "centralindia"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#     tags = {
#       environment = "dev"
#     }
#   }
# }
vnet = {
  vnet1 = {
    name                = "vikrantinfra-vnet1"
    resource_group_name = "vikrantinfra"
    location            = "centralindia"
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
    network_interface_name = "dev-nic2"
    subnet_name            = "frontend-subnet1"
    virtual_network_name   = "vikrantinfra-vnet1"
    allocation_method      = "Static"
    pip_name               = "dev-pip1"
    resource_group_name    = "vikrantinfra"
    location               = "centralindia"
    size                   =  "Standard_D2s_v3"
    disable_password_authentication = false
    source_image_reference = {
      publisher = "Canonical"
      offer     = "UbuntuServer"
      sku       = "18.04-LTS"
      version   = "latest"
    }
  }
   vm3 = {
      machine_name = "dev-vm3"
    network_interface_name = "dev-nic1"
    subnet_name            = "frontend-subnet1"
    virtual_network_name   = "vikrantinfra-vnet1"
    allocation_method      = "Static"
    pip_name               = "dev-pip3"
    resource_group_name    = "vikrantinfra"
    location               = "centralindia"
    size                   =  "Standard_D2s_v3"
    disable_password_authentication = false
    source_image_reference = {
      publisher = "Canonical"
      offer     = "UbuntuServer"
      sku       = "18.04-LTS"
      version   = "latest"
    }
  }
}


#     vm2 =  {
#        machine_name = "dev-vm2"
#     network_interface_name = "dev-nic2"
#     subnet_name            = "backend-subnet2"
#     virtual_network_name   = "vikrantinfra-vnet1"
#     allocation_method      = "Static"
#     pip_name               = "dev-pip2"
#     resource_group_name    = "vikrantinfra"
#     location               = "centralindia"
#     size                   =  "Standard_D2s_v3"
#     disable_password_authentication = false
#     source_image_reference = {
#       publisher = "Canonical"
#       offer     = "UbuntuServer"
#       sku       = "18.04-LTS"
#       version   = "latest"
#     }
#   }
# }
sql_server_list = {
  sql1 = {
    name                         = "vikrantsqlserver1"
    resource_group_name          = "vikrantinfra"
    location                     = "centralindia"
    version                      = "12.0"
    administrator_login          = "sqladminuser"
    administrator_login_password = "P@ssword1234"
    minimum_tls_version          = "1.2"
  }
  # sql2 = {
  #   name                         = "vikrantsqlserver2"
  #   resource_group_name          = "vikrantinfra"
  #   location                     = "centralindia"
  #   version                      = "12.0"
  #   administrator_login          = "sqladminuser2"
  #   administrator_login_password = "P@ssword5678"
  #   minimum_tls_version          = "1.2"
  # }
}
sql_database_list = {
  "sqldatabase1" = {
    name         = "vikrantssqldatabase"
    server_id    = "sql"
    max_size_gb  = 2
    sku_name     = "S0"
    enclave_type = "VBS"
     
  }
}

