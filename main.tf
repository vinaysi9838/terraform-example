terraform {
  cloud {
    organization = "skillark98"
    workspaces {
      name = "terraform-example"
    }
  }
}
provider "aws" {
  region     = "ap-south-1"
 
}
