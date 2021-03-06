terraform {
  # Live modules pin exact Terraform version; generic modules let consumers pin the version.
  # The latest version of Terragrunt (v0.29.0 and above) recommends Terraform 0.15.0 or abov

  # Live modules pin exact provider version; generic modules let consumers pin the version.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.7.0"
    }
  }
}


resource "aws_instance" "thedbadmin_test" {
  ami = var.ami
  instance_type = var.instance_type
}
