#In local we can use expresion & in variable we can't
#When creating need to use "locals" & when calling need to use "local"

resource "aws_instance" "test" {
  ami           = "ami-04a37924ffe27da53"
  instance_type = "t2.micro"
  tags = local.common_tags
}
locals {
  common_tags = {
    env = "prod"
    backup = "yes"
    CreationDate = "date${formatdate("DD MMM YYYY", timestamp())}"
  }
}