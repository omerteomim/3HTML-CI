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
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0f88e80871fd81e91"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0239d9fbbc1a59ff9"]
  user_data=file("${path.module}/userdata.sh")

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
