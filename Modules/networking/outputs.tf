output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "ecs_security_group_id" {
  value = aws_security_group.ecs.id
}

output "private_subnet_ids" {
  value = aws_subnet.private_subnets[*].id  # Or whichever subnets you need for ECS
}
