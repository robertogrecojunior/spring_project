terraform {
  backend "s3" {
    bucket = "my-terraform-state"
    key    = "env/dev/terraform.tfstate"
    region = "us-west-2"
  }
}

