data "aws_ami" "example" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu*"]
  }
}

resource "aws_instance" "test" {
  ami           = data.aws_ami.example.image_id
  instance_type = "t2.micro"
}