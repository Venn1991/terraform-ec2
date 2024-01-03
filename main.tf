resource "aws_instance" "madhu" {
  ami                    = "ami-01216e7612243e0ef"
  instance_type          = "t2.micro"
  key_name               = "mumbai"
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]
  user_data              = file("website.sh")
  tags = {
    Name = "vcube"
  }
}
