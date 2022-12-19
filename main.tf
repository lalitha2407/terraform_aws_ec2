resource "aws_instance" "ec2_instance" {
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  availability_zone = var.availability_zone
  monitoring        = var.monitoring
  metadata_options {
  http_tokens        = var.http_tokens
  }
  network_interface {
    network_interface_id = aws_network_interface.nic.id
    device_index         = var.device_index
  }
}
# dynamic "ebs_block_device" {
#   for_each = var.ebs_block_device ? [{}] : []
#   content {
#     subnet_id = var.subnet_id
#     delete_on_termination = var.delete_on_termination
#     volume_size = var.volume_size
#     volume_type = var.volume_type
#     }


resource "aws_network_interface" "nic" {
  subnet_id = var.subnet_id
}




resource "aws_key_pair" "awss" {
  key_name   = var.key_name
  public_key = var.public_key
}
