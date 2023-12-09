provider "aws" {
    region = "eu-west-2"
  }

  # The networking for VPC
resource "aws_vpc" "jenkins-vpc" {
  cidr_block         = "10.0.0.0/16"
  instance_tenancy   = "default"
  enable_dns_support = "true"

  tags = {
    name = "jenkins-vpc"
  }
}