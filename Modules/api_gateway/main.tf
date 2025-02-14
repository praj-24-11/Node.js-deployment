resource "aws_api_gateway_rest_api" "api" {
  name        = var.api_name
  description = "API for Node.js Application"
}

resource "aws_api_gateway_resource" "resource" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  parent_id   = aws_api_gateway_rest_api.api.root_resource_id
  path_part   = "v1"
}

resource "aws_api_gateway_method" "method" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_resource.resource.id
  authorization = "COGNITO_USER_POOLS"
  http_method   = "GET"
  request_parameters = {
    "method.request.querystring.name" = true
  }
}
