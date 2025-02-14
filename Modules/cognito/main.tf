resource "aws_cognito_user_pool" "user_pool" {
  name = var.user_pool_name
}

resource "aws_cognito_user_pool_client" "client" {
  name         = var.client_name
  user_pool_id = aws_cognito_user_pool.user_pool.id
  generate_secret = true
}
