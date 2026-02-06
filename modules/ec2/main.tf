resource "aws_instance" "this" {
  ami           = "ami-0532be01f26a3de55" # Amazon Linux 2
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id
  security_groups = [var.ec2_sg_id]

iam_instance_profile = aws_iam_instance_profile.this.name


  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y amazon-ssm-agent docker
              systemctl enable amazon-ssm-agent
              systemctl start amazon-ssm-agent
              systemctl enable docker
              systemctl start docker
              EOF
}
