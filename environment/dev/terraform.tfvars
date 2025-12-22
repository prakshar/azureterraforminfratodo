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
