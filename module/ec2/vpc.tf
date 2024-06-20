# resource "aws_vpc" "test_env" {
#   cidr_block           = var.cidr_block
#   enable_dns_hostnames = true
#   enable_dns_support   = true
# }
# resource "aws_subnet" "subnet" {
#   cidr_block        = cidrsubnet(aws_vpc.test_env.cidr_block, 3, 1)
#   vpc_id            = aws_vpc.test_env.id
#   availability_zone = var.availability_zone
# }
# resource "aws_internet_gateway" "test_env_gw" {
#   vpc_id = aws_vpc.test_env.id
# }
# resource "aws_security_group" "security" {
#   name = "allow-all"

#   vpc_id = aws_vpc.test_env.id

#   ingress {
#     cidr_blocks = [
#       "0.0.0.0/0"
#     ]
#     from_port = 22
#     to_port   = 22
#     protocol  = "tcp"
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = -1
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }                                                                                    