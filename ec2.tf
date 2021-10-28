resource "aws_security_group" "ec2_instance-name" {
  name        = "ec2-instance-name"
  description = "Security Group instance-name"
  vpc_id      = data.aws_vpc.nivelX.id
    tags = {
      "terraform:nivelX:vpc:sg" = "ec2.instance-name"
  }

  ingress {
    description     = "Acesso ao ALB a partir da rede local da VPC"
    from_port       = 3000
    to_port         = 3000
    protocol        = "tcp"
    security_groups = [aws_security_group.nivelX_priv_interno_URL_com_br.id]
  }

  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
  }
}
