###############
### ES-SECURITY-GROUP
resource "aws_security_group" "kibana" {
  name = "kibana"
  description = "SG do Elastic Search (ES) - kibana"
  vpc_id = data.aws_vpc.nivelX.id
  tags = {
      "terraform:nivelX:vpc:sg" = "kibana"
  }

  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    description     = "Acesso ao ES"
    cidr_blocks     = ["172.X.X.X/16"]
  }

  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    description     = "Acesso ao ES"
    cidr_blocks     = ["192.168.X.X/24"]
  }

    ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    description     = "Acesso liberado para o funcionario XXXXXXXX"
    cidr_blocks     = ["192.168.X.X/32"]
  }
