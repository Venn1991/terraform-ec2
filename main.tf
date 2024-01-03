resource "aws_instance" "madhu" {
  ami                    = "ami-01216e7612243e0ef"
  instance_type          = "t2.micro"
  key_name               = "mumbai"
    user_data              = file("install.sh")
  tags = {
    Name = "vcube"
  }
}
