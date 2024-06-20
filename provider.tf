terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "terraform-tfstate"
    key    = "build/airflow/terraform.tfstate"
    region = "us-west-2"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}
#provider "aws" {
#  region = "us-east-1"
#  access_key = "my-access-key"
#  secret_key = "my-secret-key"
#}
