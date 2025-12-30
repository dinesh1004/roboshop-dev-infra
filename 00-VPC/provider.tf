terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.25.0"
    }
  }
   backend "s3" {
    bucket         = "velpuladinesh-devops-bucket"
    key            = "robosho-dev-vpc"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}

provider "aws" {
  region = "us-east-1"
}