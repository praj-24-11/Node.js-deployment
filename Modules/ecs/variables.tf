variable "cluster_name" {
  description = "The name of the ECS Cluster"
  type        = string
}

variable "task_family" {
  description = "The ECS Task family"
  type        = string
}

variable "container_definitions_file" {
  description = "File path to container definitions"
  type        = string
}

variable "service_name" {
  description = "The name of the ECS service"
  type        = string
}

variable "desired_count" {
  description = "Desired number of tasks in the ECS service"
  type        = number
}
