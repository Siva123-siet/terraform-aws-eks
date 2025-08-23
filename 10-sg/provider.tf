terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }
  backend "s3" {
    bucket = "84sremotestate-dev"
    key    = "roboshop-dev-sg"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
    #dynamodb_table = "84sremotestate"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}