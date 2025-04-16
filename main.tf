provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-00a929b66ed6e0de6"
instance_type = "t2.medium"
key_name = "Rambo"
vpc_security_group_ids = ["sg-0fdff221931a1c8e8"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
