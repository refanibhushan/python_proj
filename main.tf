
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.7.0"
    }
  }
}

# configure the aws provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "test_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test_vpc"
  }
}
