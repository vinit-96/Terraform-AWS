## Creating SG
resource "aws_security_group" "allow_tls" {
  name        = "Terraform-SG"
  description = "SG created from terraform"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}