#creating two ec2 instance of subnet 1
resource "aws_instance" "firstsubnet" {
  count           = length(var.ec2_instance_subnet1)
  ami             = "ami-01a4f99c4ac11b03c"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.main1.id
  security_groups = ["${aws_security_group.securitygrp.id}"]

  tags = {
    Name  = var.ec2_instance_subnet1[count.index]
    Owner = var.ownername
  }
  volume_tags = {
    "Name"  = "jatin-test-volume1"
    "Owner" = var.ownername
  }
}

#creating two ec2 instance of subnet2
resource "aws_instance" "secondsubnet" {
  count           = length(var.ec2_instance_subnet2)
  ami             = "ami-01a4f99c4ac11b03c"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.main1.id
  security_groups = ["${aws_security_group.securitygrp.id}"]

  tags = {
    Name  = var.ec2_instance_subnet2[count.index]
    Owner = var.ownername
  }
  volume_tags = {
    "Name"  = "jatin-test-volume2"
    "Owner" = var.ownername
  }
}