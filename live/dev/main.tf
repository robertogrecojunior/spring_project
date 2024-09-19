module "vpc" {
  source = "../../modules/vpc"
  cidr_block      = var.cidr_block
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
}

module "ec2" {
  source = "../../modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnets[0]
  name          = "dev-instance"
}

module "rds" {
  source = "../../modules/rds"
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t2.micro"
  name                 = "devdb"
  username             = "admin"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
}

