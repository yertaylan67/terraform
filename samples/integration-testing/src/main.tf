resource "random_uuid" "uuid" {}

resource "azurerm_resource_group" "rg" {
  name     = "rg-hello-tf-${random_uuid.uuid.result}"
  location = var.location
  
    tags = {
    
    Environment = "Production"
    Workload = "SAP"
    Version = "1.0"

  }
}
