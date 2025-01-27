terraform {
  backend "s3" {
    bucket = "temp-tf-state-bucket"
    key = "stage/terraform.state"
    region = "us-east-1"
  }

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

locals {
  environment = "stage"
}

module "infrastructure" {
  source = "../../modules/infrastructure"
  region = "us-east-1"
  bucket_name = "ip-calculator-site-${local.environment}"
}
