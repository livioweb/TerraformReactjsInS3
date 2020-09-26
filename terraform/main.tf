provider "aws" {
  region = var.region
  version = "~> 2.7"
}

data "template_file" "policy" {
  template = file("templates/policy.json")

  vars = {
    bucket_name = var.domain
  }
}
