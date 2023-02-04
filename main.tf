resource "aws_ecs_cluster" "this" {
  name = "${local.stack}-${var.resource_name_suffix}"

  setting {
    name  = "containerInsights"
    value = var.container_insights_enabled ? "enabled" : "disabled"
  }
}
