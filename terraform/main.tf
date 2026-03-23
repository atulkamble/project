terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.37.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "mySG" {
  name        = "mySG"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
resource "aws_instance" "ec2" {
  ami                    = "ami-02dfbd4ff395f2a1b" # Amazon Linux 2 AMI
  instance_type          = "t3.medium"
  vpc_security_group_ids = [aws_security_group.mySG.id]
  count                  = "1"

  tags = {
    Name = "server"
  }
}
