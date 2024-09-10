variable "ecs_cluster_name" {
  description = "ECS Cluster Name"
  type        = string
}

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "resource_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
}