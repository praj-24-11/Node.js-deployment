output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "ecs_security_group_id" {
  value = aws_security_group.ecs.id
}

output "ecs_security_group_id" {
  value = aws_security_group.ecs_sg.id  # Make sure this points to the ECS security group
}

output "private_subnet_ids" {
  value = aws_subnet.private_subnets[*].id  # Or whichever subnets you need for ECS
}
