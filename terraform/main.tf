terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.4.3"
    }
  }
}

provider "random" {}

resource "random_string" "example" {
  length  = 16
  special = true
  upper   = true
  numeric = true
}

output "random_string" {
  value = random_string.example.result
}