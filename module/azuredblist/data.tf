data "azurerm_mssql_server" "sql" {
        name     = "vikrantsqlserver1"
    resource_group_name = "vikrantinfra"
  
}

output "id" {
  value = data.azurerm_mssql_server.sql.id
}