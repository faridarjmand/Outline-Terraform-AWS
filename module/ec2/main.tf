resource "aws_instance" "ec2" {
  # oregan
  ami                         = var.image_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  associate_public_ip_address = true
  # security_groups             = ["${aws_security_group.security.id}"]
  security_groups = ["${aws_security_group.ingress-all-test.id}"]
  subnet_id       = aws_subnet.subnet-uno.id
  tags = {
    Created_By = var.createdby
    Name       = var.machine_name
  }
  user_data = <<EOF
                #!/bin/bash
                echo "helloooooo" > test.txt
                apt update
                apt -y install curl nginx
                systemctl start nginx.service
                systemctl status nginx.service
              EOF
}