variable "project_name" {
  description = "Project name"
  type        = string
}

variable "rate_limit" {
  description = "Rate limit for WAF"
  type        = number
  default     = 1000
}

variable "api_gateway_arn" {
  description = "API Gateway ARN to associate WAF"
  type        = string
}
