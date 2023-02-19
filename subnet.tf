resource "aws_subnet" "main1" {
  vpc_id                  = aws_vpc.jatin_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name  = "jatin-subnet1"
    Owner = var.ownername
  }
}


resource "aws_subnet" "main2" {
  vpc_id                  = aws_vpc.jatin_vpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name  = "jatin-subnet2"
    Owner = var.ownername
  }
}
