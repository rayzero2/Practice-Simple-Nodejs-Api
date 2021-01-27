terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "remote" {
   organization = "patanasak"

    workspaces {
      name = "int493"
    }
  }
}