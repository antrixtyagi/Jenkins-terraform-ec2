terraform {
required_providers {
aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b5a4445ada4a59b1"
  instance_type = "t2.micro"

  tags = {
    Name = "antrix5"
  }
}