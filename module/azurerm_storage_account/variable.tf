variable "stg" {
    type = map(object({
        name = string
        resource_group_name = string
        location = string
        account_tier = string
        account_replication_type = string
        account_kind = optional(string)
        access_tier = optional(string)
        public_network_access_enabled = optional(bool)
        tags = optional(map(string))

    }))

}