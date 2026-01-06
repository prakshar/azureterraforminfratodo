rgs = {
  rg1 = {
    name       = "rgtodo1"
    location   = "central india"
    managed_by = "terraform"
    tags = {
      environment = "dev"
      owner       = "prakhar"
      project     = "infratodo"
    }

  }
  rg2 = {
    name     = "rgtodo2"
    location = "east us"
    tags = {
      environment = "dev"
      owner       = "prakhar"
    project = "infratodo" }

  }
  rg3 = {
    name     = "rgtodo3"
    location = "east us"
    tags = {
      environment = "dev"
      owner       = "prakhar"
    project = "infratodo" }

  }
}

stg = {
  stg1 = {
    name                          = "cerrebal0708"
    resource_group_name           = "rgtodo1"
    location                      = "central india"
    account_tier                  = "Standard"
    account_replication_type      = "LRS"
    account_kind                  = "BlobStorage"
    access_tier                   = "Hot"
    public_network_access_enabled = "true"
    tags = {
      owner = "rg-1"
    }

  }

  stg2 = {
    name                     = "cerrebal07124"
    resource_group_name      = "rgtodo2"
    location                 = "east us"
    account_tier             = "Standard"
    account_replication_type = "LRS"

  }
}
pips = {
  pip1 = {
    name                = "pipfrontend"
    resource_group_name = "rgtodo1"
    location            = "central india"
    allocation_method   = "Static"


  }

  pip2 = {
    name                = "pipbackend"
    resource_group_name = "rgtodo1"
    location            = "central india"
    allocation_method   = "Static"


  }
}

subnets = {
  subnet1 = {

    name                = "frontendsubnet"
    location            = "central india"
    resource_group_name = "rgtodo1"
    address_prefixes    = ["10.0.1.0/24"]
  }

  subnet2 = {

    name                = "backendsubnet"
    location            = "central india"
    resource_group_name = "rgtodo1"
    address_prefixes    = ["10.0.2.0/24"]
  }

}
vns = {
  vnet1 = {
    name                = "rgdovnet"
    location            = "central india"
    resource_group_name = "rgtodo1"
    address_space       = ["10.0.0.0/16"]

  }
}

nic = {
  nic1 = {

    nicname              = "vmnic"
    location             = "central india"
    resource_group_name  = "rgtodo1"
    subnetname           = "frontendsubnet"
    pipname              = "pipfrontend"
    virtual_netwrok_name = "rgdovnet"
    ip_configuration = [{
      name                          = internal
      private_ip_address_allocation = dynamic
      }
    ]

  }
}

vms = {
  vm1 = {

    vmname              = "frontendvm"
    resource_group_name = "rgtodo1"
    location            = "central india"
    size                = "Standard_F2"
    nicname             = "vmnic"
    admin_username      = "vmfrontend"
    admin_password      = "test@12345"

    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }




  vm2 = {

    vmname              = "backendvm"
    resource_group_name = "rgtodo1"
    location            = "central india"
    size                = "Standard_F2"
    nicname             = "vmnic"
    admin_username      = "vmbackend"
    admin_password      = "test@12345"

    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }

  }
}
