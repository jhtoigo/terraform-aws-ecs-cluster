output "cluster_id" {
  value       = aws_ecs_cluster.ecs_cluster.id
  description = "ECS Cluster ID"
}

output "log_group_ecs" {
  value       = aws_cloudwatch_log_group.log_group_ecs.name
  description = "Cloudwatch Cluster Logs"
}