# Output for VPC
output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.vpc.vpc_id
}

# Output for public subnets
output "public_subnets" {
  description = "The IDs of the public subnets"
  value       = module.vpc.public_subnets
}

# Output for EC2 instance
output "ec2_instance_id" {
  description = "The ID of the created EC2 instance"
  value       = module.ec2.app.id
}

output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = module.ec2.app.public_ip
}

# Output for RDS database
output "rds_endpoint" {
  description = "The endpoint of the RDS database"
  value       = aws_db_instance.this.endpoint
}

output "rds_instance_id" {
  description = "The ID of the created RDS instance"
  value       = aws_db_instance.this.id
}

