## Creation of workshop security group
resource "outscale_security_group" "security_group_workshop" {
  security_group_name = "security_group_workshop_${var.name}"
  description = "Security group for workshop ${var.name} instances"
  tag = {
        Name = "sg-workshop-${var.name}"
  }
}
## Creation of ssh inbound rule
resource "outscale_security_group_rule" "allow_ssh" {
  flow = "Inbound"
  security_group_id = outscale_security_group.security_group_workshop.security_group_id
  ip_protocol = "tcp"
  from_port_range = "22"
  to_port_range = "22"
  ip_range = "0.0.0.0/0"
}
## Creation of http inbound rule
resource "outscale_security_group_rule" "allow_http" {
  flow = "Inbound"
  security_group_id = outscale_security_group.security_group_workshop.security_group_id
  ip_protocol = "tcp"
  from_port_range = "80"
  to_port_range = "80"
  ip_range = "0.0.0.0/0"
}
