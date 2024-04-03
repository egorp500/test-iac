terraform {
  required_version = "~> 1.5.7"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.36.0"
    }

    circleci = {
      source = "kelvintaywl/circleci"
      version = "1.0.1"
    }

  }
}

provider "digitalocean" {}
