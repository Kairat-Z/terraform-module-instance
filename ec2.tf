provider aws {
    region = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0eb070c40e6a142a3"
  instance_type = var.instance_type
  user_data = file("apache.sh")

  tags = {
    Name = var.instance_name
  }  
}
