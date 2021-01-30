provider "azurerm" {
  version = ">=1.15.0"
}

terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "patanasak"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "int493"
         }
       }
     }

resource "azurerm_resource_group" "INT493" {
    name = "INT493"
    location = "Southeast Asia"
}

resource "azurerm_virtual_network" "INT493" {
    name = "INT493-vnet"
    resource_group_name = "INT493"
    location = "Southeast Asia"
    address_space = [ "10.0.0.0/24" ]
}