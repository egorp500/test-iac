resource "circleci_env_var" "my_env_vars" {
  for_each = {
    "DIGITALOCEAN_REGISTRY_ACCESS_TOKEN" = var.digitalocean_registry_access_token
    "DIGITALOCEAN_REGISTRY_ENDPOINT"     = data.terraform_remote_state.terraform_do_test_01_infra.outputs.do_docker_container_registry_endpoint
  }

  project_slug = var.circleci_project_slug
  name         = each.key
  value        = each.value
}
