resource "random_id" "docker_registry_id" {
  byte_length = 4
}

resource "digitalocean_container_registry" "do_docker_container_egistry" {
  name                   = "dockerregistry${random_id.docker_registry_id.hex}"
  subscription_tier_slug = "starter"
  region                 = var.do_region_slug_prefix
}