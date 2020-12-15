resource "outscale_keypair" "keypair_workshop" {
  keypair_name = "key_workshop_${var.name}"
}
