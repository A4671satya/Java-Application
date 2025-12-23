resource "aws_autoscaling_group" "nginx_asg" {
  desired_capacity = 2
  max_size         = 4
  min_size         = 2
  vpc_zone_identifier = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]

  launch_template {
    id      = aws_launch_template.nginx.id
    version = "$Latest"
  }
}

resource "aws_autoscaling_group" "tomcat_asg" {
  desired_capacity = 2
  max_size         = 4
  min_size         = 2
  vpc_zone_identifier = [
    aws_subnet.private_1.id,
    aws_subnet.private_2.id
  ]

  launch_template {
    id      = aws_launch_template.tomcat.id
    version = "$Latest"
  }
}

