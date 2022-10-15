terraform {
  required_version = "1.32"
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.16.0"
    }
  }
}