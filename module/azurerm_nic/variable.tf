variable "nic" {
  type = map(object({

    nicname                = string
    location            = string
    resource_group_name = string
    ip_configuration = list(object({
      name = string

      private_ip_address_allocation = string
      

    }))

  }))
}