output "api_gateway_id" {
  value = aws_api_gateway_rest_api.api.id
}

output "api_gateway_invoke_url" {
  value = aws_api_gateway_stage.prod.invoke_url
}
