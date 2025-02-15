output "api_gateway_id" {
  value = aws_api_gateway_rest_api.api.id
}

output "api_gateway_invoke_url" {
  value = aws_api_gateway_stage.prod.invoke_url
}

output "api_gateway_arn" {
  value = "arn:aws:apigateway:us-east-1::/restapis/${aws_api_gateway_rest_api.api.id}/stages/prod"
  description = "The ARN of the API Gateway stage"
}
