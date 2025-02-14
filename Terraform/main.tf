module "api_gateway" {
  source   = "../modules/api_gateway"
  api_name = var.api_name
}

module "ecs" {
  source               = "../modules/ecs"
  cluster_name         = var.cluster_name
  task_family          = var.task_family
  container_definitions_file = var.container_definitions_file
  service_name         = var.service_name
  desired_count        = var.desired_count
}

module "cognito" {
  source          = "../modules/cognito"
  user_pool_name  = var.user_pool_name
  client_name     = var.client_name
}
