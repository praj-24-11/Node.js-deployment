variable "api_name" {
  description = "Name of the API"
  type        = string
}

variable "cluster_name" {
  description = "ECS Cluster Name"
  type        = string
}

variable "task_family" {
  description = "ECS Task Family"
  type        = string
}

variable "container_definitions_file" {
  description = "Path to container definition file"
  type        = string
}

variable "service_name" {
  description = "ECS Service Name"
  type        = string
}

variable "desired_count" {
  description = "Desired ECS task count"
  type        = number
}

variable "user_pool_name" {
  description = "Cognito User Pool Name"
  type        = string
}

variable "client_name" {
  description = "Cognito Client Name"
  type        = string
}
