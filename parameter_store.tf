resource "aws_ssm_parameter" "cluster_name" {
  name  = format("/%s/ecs-cluster/%s/name", var.project_name, var.ecs_cluster_name)
  value = aws_ecs_cluster.ecs_cluster.name
  type  = "String"
  tags  = var.resource_tags
}

resource "aws_ssm_parameter" "cluster_id" {
  name  = format("/%s/ecs-cluster/%s/id", var.project_name, var.ecs_cluster_name)
  value = aws_ecs_cluster.ecs_cluster.id
  type  = "String"
  tags  = var.resource_tags
}

resource "aws_ssm_parameter" "log_group_ecs" {
  name  = format("/%s/ecs-log-group", var.project_name)
  value = aws_cloudwatch_log_group.log_group_ecs.name
  type  = "String"
}
