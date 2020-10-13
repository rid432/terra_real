resource "aws_instance" "FirstInstance2" {
  ami           = "ami-0a620f8d91c186cc3"
  instance_type = "t2.micro"
  key_name   = "terrakey"

  tags = {
    Name = "Terraform_EC2_ssh"
  }
 
}