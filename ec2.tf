resource "aws_instance" "web" {
  ami           = "ami-0884d2865dbe9de4b"
  instance_type = var.instance_type
  user_data = file("apache.sh")

  tags = {
    Name = var.instance_name
  }  
}
