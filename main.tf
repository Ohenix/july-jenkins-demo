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
  vpc_id = "aws_vpc.jenkins-vpc.id"
  availability_zone = "eu-west-1a"

  tags = {
    name = "march"
  }
}
