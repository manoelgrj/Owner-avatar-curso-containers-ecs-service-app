module "service" {
  source                      = "/home/manoel/AWS/LinuxTips/curso-containers-ecs-service-module"
  region                      = var.region
  cluster_name                = var.cluster_name
  service_name                = var.service_name
  service_port                = var.service_port
  service_cpu                 = var.service_cpu
  service_memory              = var.service_memory
  service_listener            = data.aws_ssm_parameter.listener.value
  service_task_execution_role = aws_iam_role.main.arn
  service_healthcheck         = var.service_healthcheck
  environment_variables       = var.environment_variables
  capabilities                = var.capabilities
  service_hosts               = var.service_hosts
  service_launch_type         = var.service_launch_type
  service_task_count          = var.service_task_count

  vpc_id = data.aws_ssm_parameter.vpc_id.value
  private_subnets = [
    data.aws_ssm_parameter.subnet_private_1.value,
    data.aws_ssm_parameter.subnet_private_2.value,
    data.aws_ssm_parameter.subnet_private_3.value,
  ]
}