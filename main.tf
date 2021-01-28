terraform {
  backend "remote" {
    organization = "patanasak"

    workspaces {
      name = "int493"
    }
  }
}