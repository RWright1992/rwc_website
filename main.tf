terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.7"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}


resource "aws_vpc" "examplevpc" {
  cidr_block = "10.0.0.0/16"
}



resource "aws_instance" "WebsiteInstance" {
    ami = var.ami
    instance_type = var.instance_type
    tags {
        Name = "EC2_Terraform_Instance"
        }
}
