provider "aws" {
  region = "us-east-1"

}
resource "aws_instance" "intro" {
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"
  availability_zone = "us-east-1"
  key_name = "terraform-practice.pem"
  vpc_security_group_ids = [sg-0b1becc3d77bd99e5]
  tags = {
    Name = Terraform-instance
  }
}