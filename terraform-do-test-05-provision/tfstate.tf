data "terraform_remote_state" "terraform_do_test_01_infra" {
  backend = "local"

  config = {
    path = "../terraform-do-test-01-infra/terraform.tfstate"
  }
}