terraform {
  required_providers {
    outscale = {
      source = "outscale-dev/outscale"
      version = "0.2.0"
    }
  }
}

provider "outscale" {
  access_key_id = var.credentials.access_key
  secret_key_id = var.credentials.secret_key
  region = "eu-west-2"
}
