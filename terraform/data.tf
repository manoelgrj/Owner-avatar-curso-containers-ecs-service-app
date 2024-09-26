data "aws_ssm_parameter" "vpc_id" {
  name = var.ssm_vpc_id
}

data "aws_ssm_parameter" "listener" {
  name = var.ssm_listener
}

data "aws_ssm_parameter" "subnet_private_1" {
  name = var.ssm_private_subnet_1
}

data "aws_ssm_parameter" "subnet_private_2" {
  name = var.ssm_private_subnet_2
}

data "aws_ssm_parameter" "subnet_private_3" {
  name = var.ssm_private_subnet_3
}