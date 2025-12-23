resource "aws_launch_template" "tomcat" {
  name_prefix   = "tomcat-lt"
  image_id      = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  user_data = base64encode(<<EOF
#!/bin/bash
apt update
apt install openjdk-11-jdk tomcat9 -y
systemctl start tomcat9
EOF
  )

  vpc_security_group_ids = [aws_security_group.tomcat_sg.id]
}

