provider "aws" {
    region = "eu-west-1"
  }

  # The networking for VPC
resource "aws_vpc" "jenkins-vpc" {
  cidr_block         = "10.0.0.0/18"
  instance_tenancy   = "default"
  enable_dns_support = "true"

  tags = {
    name = "jenkins-vpc"
  }
}
resource "aws_subnet" "march" {
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    name = "march"
  }
}
