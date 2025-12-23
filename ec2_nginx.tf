resource "aws_launch_template" "nginx" {
  name_prefix   = "nginx-lt"
  image_id      = "ami-0f58b397bc5c1f2e8" # Ubuntu 22.04
  instance_type = "t3.micro"

  user_data = base64encode(<<EOF
#!/bin/bash
apt update
apt install nginx -y
systemctl start nginx
EOF
  )

  vpc_security_group_ids = [aws_security_group.nginx_sg.id]
}

