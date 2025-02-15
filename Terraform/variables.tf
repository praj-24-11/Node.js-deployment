variable "project_name" {
  description = "The name of the project"
  type        = string
}

# Networking Variables
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"] # Add your AZs here
}

# ECS Variables
variable "container_image" {
  description = "Docker image for the ECS task"
  type        = string
}

variable "cpu" {
  description = "CPU units for the container"
  type        = string
}

variable "memory" {
  description = "Memory for the container"
  type        = string
}

variable "desired_count" {
  description = "Number of ECS tasks to run"
  type        = number
}

variable "secret_arn" {
  description = "ARN of the Secrets Manager secret"
  type        = string
}

# API Gateway Variables
variable "rate_limit" {
  description = "API Gateway rate limit"
  type        = number
}

variable "burst_limit" {
  description = "API Gateway burst limit"
  type        = number
  default     = 5000
}

# WAF Variables
variable "waf_rate_limit" {
  description = "Rate limit for WAF"
  type        = number
}

# ECR Variables
variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}
