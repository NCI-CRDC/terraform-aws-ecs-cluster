resource "aws_ecs_cluster" "this" {
  name = "${local.stack}-${var.resource_name_suffix}"

  setting {
    name  = "containerInsights"
    value = var.container_insights_enabled ? "enabled" : "disabled"
  }
}

variable "resource_name_suffix" {
  type = string
}

variable "container_insights_enabled" {
  type        = bool
  description = "whether to enable container insights for the services running in the cluster"
  default     = false
}