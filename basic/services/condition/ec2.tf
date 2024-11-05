resource "aws_instance" "test" {
  ami           = "ami-04a37924ffe27da53"
  instance_type = var.environment == "devlopment" ? "t2.micro" : "t2.small"
  tags = {
    Name = "test"
  }
}
