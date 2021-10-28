###############
### ELB-SECURITY-GROUP
resource "aws_security_group" "nivelX_pub_URL_com_br" {
  name = "alb_nivelX_pub_URL_com_br"
  description = "SG do ALB publico utilizado no nivelX da camada de producao"
  vpc_id      = data.aws_vpc.nivelX.id
    tags = {
      "terraform:nivelX:vpc:sg" = "alb.nivelX_pub_URL_com_br"
  }

  ingress {
    description = "Acesso ao ALB a partir da CloudFlare"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["X.X.X.X/20","X.X.X.X/22","X.X.X.X/22","X.X.X.X/22","X.X.X.X/18","X.X.X.X/18","X.X.X.X/22"]
  }
  ingress {
    description = "Acesso ao ALB a partir do Modulo para testes"
    from_port         = 443
    to_port           = 443
    protocol          = "tcp"
    cidr_blocks       = ["X.X.X.X/32"]
  }

  egress {
    description = "Acesso temporario para funcionários da equipe XXXXX"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["172.X.X.X/16"]
  }

  egress {
    description = "Acesso temporario para funcionários da equipe XXXXX"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["172.X.X.X/16"]
  }


  egress {
    description = "Acesso do ALB aos backends necessarios"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["X.X.X.X/16"]
  }

}
