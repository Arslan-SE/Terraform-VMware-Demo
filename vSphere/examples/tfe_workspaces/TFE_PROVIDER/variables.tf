# SETUP
#variable "prefix" {}

# TFE 
variable "hostname"  {}
variable "org" {}
variable "tfe_oauth_token" {}
variable "tfe_org_token" {}
variable "tfe_user_token" {}
variable "vcs_repo_identifier" {}
variable "tags_working_directory" {}
variable "network_working_directory" {}
variable "compute-base-vm_working_directory" {}
variable "compute-linux_working_directory" {}



# VSPHERE
variable "VSPHERE_USER" { }
variable "VSPHERE_PASSWORD" { }
variable "VSPHERE_SERVER" { }
variable "VSPHERE_ALLOW_UNVERIFIED_SSL" { }


variable "dc" {}
variable "resource_pool" {}
variable "host" {}
variable "datastore" {}
variable "network" {}
variable "vswitch" {}
variable "vm-name-prefix" {}
variable "wait_for_guest_net_timeout" {}
variable "memory" {}
variable "disk_size" {}
variable "vm_count" {}
variable "guest_id" {}

#NETWORK
variable "ipv4submask" {
  description = "ipv4 Subnet mask"
  default     = 24
}

variable "ipaddress" {
  description = "host(VM) IP address in list format, support more than one IP. Should correspond to number of instances"
  type        = "string"
}

variable "vmgateway" {
  description = "VM gateway to set during provisioning"
}

variable "vmdns" {
  type = "string"
}
