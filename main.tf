resource "aws_cloudwatch_log_group" "log_group_ecs" {
  name = var.ecs_cluster_name
}

resource "aws_ecs_cluster" "ecs_cluster" {
  name = var.ecs_cluster_name

  configuration {
    execute_command_configuration {
      # kms_key_id = aws_kms_key.example.arn
      logging = "OVERRIDE"

      log_configuration {
        # cloud_watch_encryption_enabled = true
        cloud_watch_log_group_name = aws_cloudwatch_log_group.log_group_ecs.name
      }
    }
  }
  tags = merge(
    var.resource_tags
  )

}

resource "aws_ecs_cluster_capacity_providers" "ecs_cluster_provider" {
  cluster_name = aws_ecs_cluster.ecs_cluster.name

  capacity_providers = ["FARGATE", "FARGATE_SPOT"]

  default_capacity_provider_strategy {
    weight            = 100
    base              = 0
    capacity_provider = "FARGATE"
  }
}

