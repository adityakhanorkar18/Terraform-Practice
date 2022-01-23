provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}
  resource "aws_vpc" "MyVPC" {
   cidr_block = "10.0.0.0/16"
   tags = {
     Name = "MyVPC1"
   } 
  }
  resource "aws_instance" "Web" {
    ami = "ami-005e54dee72cc1d00"
    instance_type = "t2.micro"
    tags = {
      Name = "Web1"
    }
  }