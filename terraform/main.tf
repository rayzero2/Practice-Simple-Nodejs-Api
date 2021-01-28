terraform {
    required_version = ">=0.11"
  backend "azurerm" {
    storage_account_name = "__terraformstorageaccount__"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    access_key           = "__storagekey__"
    organization = "patanasak"

    workspaces {
      name = "int493"
    }
  }
}

resource "azurerm_resource_group" "INT493" {
    name = "INT493"
    location = "Southeast Asia"
}

resource "azurerm_app_service_plan" "INT493" {
    name = "__appserviceplan__"
    location = "${azurerm_resource_group.INT493.location}"
    rescource_group_name = "${azurerm_resource_group.INT493.name}"


    sku {
        tier = "FREE"
        size = "F1"
    }


}
resource "azurerm_app_service" "INT493" {
    name = "__appservicename__"
    location = "${azurerm_resource_group.INT493.location}"
    rescource_group_name = "${azurerm_resource_group.INT493.name}"
    app_azurerm_app_service_plan_id = "${azurerm_app_service_plan_dev.id}"
}