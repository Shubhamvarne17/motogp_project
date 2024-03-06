provider "aws" {
    region = var.region  
}

resource "aws_instance" "motogp" {
    count = 5
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name

}

variable "region" {
    default = "ap-south-1"
    description = "Describing region"
  
}

variable "ami" {
    default = "ami-03f4878755434977f"
  
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "key_name" {
    default = "abhi_mumbai_dell"
  
}

terraform {
  backend "s3" {
    bucket = "abhishek9130142892"
    region = "ap-south-1"
    key = "terraform.tfstate"
    
  }
}