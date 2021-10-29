 terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami = "ami-03d5c68bab01f3496"
  instance_type = "t2.micro"
  key_name = "oregon_terraform_key"
  # user_data = 
  tags=  {
    Name = "Terraform | Ansible | AWS"

  }
 }
