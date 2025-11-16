variable "storage_account_name" {
    description = "A map of storage account configurations"
    type = map(object({
        storage_account_name      = string
        resource_group_name       = string
        location                  = string
        account_tier              = string
        account_replication_type  = string
        tags                      = map(string)
    }))

  
}