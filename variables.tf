variable "ami" {
  description = "The ami number of the machine image"
  type        = string

}
variable "region" {
  description = "The region where the instance is to be created"
  type        = string

}
variable "instance_type" {
  description = "The instance machine type"
  type        = string

}
variable "device_index" {
  description = "value"
  type        = number
}
variable "key_name" {
  description = "value"
  type        = string

}
variable "availability_zone" {
  description = "The availability zone where the instance is to be created "
  type        = string

}
variable "network_interface_id" {
  description = "The ID of the network interface created for the instance"
  type        = string

}
variable "ebs_block_device" {
  description = "The name of the root block device"
  type        = string
  default     = true

}
variable "subnet_id" {
  description = "The name of the root block device"
  type        = string

}
variable "volume_size" {
  description = "The size of the root block device in GB"
  type        = string

}
variable "volume_type" {
  description = "The type of disk for the root block device"
  type        = string

}
variable "delete_on_termination" {
  description = "Boolean value if set true the block device will get deleted if the instance is terminated"
  type        = string

}
variable "instance" {
  description = "The instance name where the block device needs to attached"
  type        = string

}

variable "public_key" {
  description = "value"
  type        = string
}