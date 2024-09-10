output "cluster_id" {
  value       = aws_ecs_cluster.ecs_cluster.id
  description = "ECS Cluster ID"
}

output "log_group_ecs" {
  value       = aws_cloudwatch_log_group.log_group_ecs.name
  description = "Cloudwatch Cluster Logs"
}

output "ssm_cluster_name" {
  description = "SSM Parameter for ECS Cluster Name"
  value       = aws_ssm_parameter.cluster_name.name
}

output "ssm_cluster_id" {
  description = "SSM Parameter ECS Cluster ID"
  value       = aws_ssm_parameter.cluster_name.id
}

output "ssm_ecs_log_group" {
  description = "SSM Parameter ECS log group"
  value       = aws_ssm_parameter.log_group_ecs.name
}