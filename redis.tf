resource "aws_security_group" "redis_name" {
  name        = "redis_name"
  description = "Security Group do redis name"
  vpc_id      = data.aws_vpc.niveX.id
    tags = {
      "terraform:nivelX:vpc:sg" = "redis-name"
  }

  ingress {
    from_port         = 6379
    to_port           = 6379
    protocol          = "tcp"
    security_groups   = [aws_security_group.ec2_XXXXXXX.id]
    description = "Acesso instancias XXXXXXX"
  }

  ingress {
    from_port       = 6379
    to_port         = 6379
    protocol        = "tcp"
    description     = "Acesso liberado para o funcionário XXXXXXX"
    cidr_blocks     = ["192.168.X.X/32"]
  }

  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
  }
}
