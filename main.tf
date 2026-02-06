module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs = ["us-east-1a", "us-east-1b"]
}

module "sg" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"
  instance_type = var.instance_type
  private_subnet_id = module.vpc.private_subnets[0]
  ec2_sg_id = module.sg.ec2_sg_id
  instance_profile = "ssm-instance-profile"
}

module "alb" {
  source = "./modules/alb"
  vpc_id = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnets
  alb_sg_id = module.sg.alb_sg_id
  instance_id = module.ec2.instance_id
}
