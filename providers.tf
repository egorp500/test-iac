terraform {
  required_version = "~> 1.5.7"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.36.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.6.0"
    }
  }
}

provider "digitalocean" {}