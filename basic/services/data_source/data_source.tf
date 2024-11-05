#Data source is used to read the information ouside the terraform (locall, AWS)
#Outout will be in the tfstate
#in this it will fetch all the instance details in us-east-1 region because of mentioned provider
#in below one it will fetch all the details.

data "aws_instances" "test" {
  }

#we can filter it to get minimal details as per requirement.

data "aws_instance" "foo" {
  instance_id = "i-instanceid"

  filter {
    name   = "image-id"
    values = ["ami-xxxxxxxx"]
  }

  filter {
    name   = "tag:Name"
    values = ["instance-name-tag"]
  }
}
