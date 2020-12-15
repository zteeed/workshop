output "workshop" {
  value = {
    "hostname": var.name,
    "public_ip": outscale_vm.vm_workshop.public_ip,
    "private_ip": outscale_vm.vm_workshop.private_ip
    "private_key": outscale_keypair.keypair_workshop.private_key
  }
}
