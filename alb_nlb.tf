resource "aws_lb" "public_nlb" {
  name               = "public-nlb"
  load_balancer_type = "network"
  internal           = false
  subnets = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]
}

