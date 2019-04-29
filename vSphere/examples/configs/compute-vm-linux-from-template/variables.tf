# SETUP
variable "dc"  {}
variable "datastore" {}
variable "network" {}
variable "resource_pool" {}
variable "vm_name_prefix" {}
variable "disk_size" {}

variable "guest_id" {}
variable "memory" {}
variable "vm_count" {}
variable "wait_for_guest_net_timeout" {}

variable "ipaddress" {
  description = "host(VM) IP address in list format, support more than one IP. Should correspond to number of instances"
  type        = "list"
}

variable "vmgateway" {
  description = "VM gateway to set during provisioning"
}

variable "vmdns" {
  type = "list"
}