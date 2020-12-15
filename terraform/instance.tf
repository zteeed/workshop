resource "outscale_vm" "vm_workshop" {
  image_id = "ami-abe953fa"
  # osc-cli fcu --profile eu DescribeImages | jq -r '.DescribeImagesResponse.imagesSet.item[] | select (.imageLocation == "Outscale/CentOS-7-2019.10.28-0") | .imageId'
  vm_type = "tinav5.c2r2p3"
  keypair_name = outscale_keypair.keypair_workshop.keypair_name
  security_group_ids = [
    outscale_security_group.security_group_workshop.security_group_id,
  ]
  block_device_mappings {
    device_name = "/dev/sda1"
    bsu {
      volume_size = var.storage
      volume_type = "io1"
      iops = 150
      delete_on_vm_deletion = true
    }
  }
  tags {
    key = "Name"
    value = var.name
  }
}
