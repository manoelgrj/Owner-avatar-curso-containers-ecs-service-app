variable "region" {}

variable "service_name" {}

variable "container_image" {}

variable "cluster_name" {}

variable "service_port" {}

variable "service_cpu" {}

variable "service_memory" {}

variable "service_healthcheck" {}

#variable "service_launch_type" {}
variable "service_launch_type" {
  type = list(object({
    capacity_provider = string
    weight            = number
  }))
}

variable "service_task_count" {}

variable "service_hosts" {}

variable "ssm_vpc_id" {}

variable "ssm_listener" {}

variable "ssm_private_subnet_1" {}

variable "ssm_private_subnet_2" {}

variable "ssm_private_subnet_3" {}

variable "ssm_alb" {}

variable "environment_variables" {
  type = list(any)
}

variable "capabilities" {
  type = list(any)
}


variable "scale_type" {}

variable "task_minimum" {}

variable "task_maximum" {}

### Autoscaling de CPU

variable "scale_out_cpu_threshold" {}

variable "scale_out_adjustment" {}

variable "scale_out_comparison_operator" {}

variable "scale_out_statistic" {}

variable "scale_out_period" {}

variable "scale_out_evaluation_periods" {}

variable "scale_out_cooldown" {}

variable "scale_in_cpu_threshold" {}

variable "scale_in_adjustment" {}

variable "scale_in_comparison_operator" {}

variable "scale_in_statistic" {}

variable "scale_in_period" {}

variable "scale_in_evaluation_periods" {}

variable "scale_in_cooldown" {}

variable "scale_tracking_cpu" {}


### Tracking Request
variable "scale_tracking_requests" {}

### Service Discovery
variable "ssm_service_discovery_namespace" {}