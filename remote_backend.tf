terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "yantra-cloud"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
