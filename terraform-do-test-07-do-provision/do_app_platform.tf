resource "digitalocean_app" "test_nodejs_application" {
  spec {
    name   = var.do_app_name
    region = var.do_region_slug_prefix

    service {
      name               = var.do_svc_name
      instance_count     = 1
      instance_size_slug = "basic-xxs"
      http_port          = 3000

      health_check {
        http_path             = "/healthcheck"
        initial_delay_seconds = 30
        period_seconds        = 20
      }

      image {
        registry_type = "DOCR"
        repository    = var.do_app_name
        deploy_on_push {
          enabled = true
        }

      }

    }
  }
}