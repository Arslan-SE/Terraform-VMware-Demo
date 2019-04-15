
terraform {
  required_version = ">= 0.11.11"
}
data "vsphere_datacenter" "dc" {
  name = "${var.dc}"
}
data "vsphere_host" "host" {
  name          = "${var.host}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
# Management Network Portgroup
resource "vsphere_host_port_group" "mgmt" {
  name                = "DEMO-MGMT_Network"
  host_system_id      = "${data.vsphere_host.host.id}"
  virtual_switch_name = "${var.network}"
}
# vMotion Network Portgroup
resource "vsphere_host_port_group" "vmotion" {
  name                = "DEMO-vMotion Network"
  host_system_id      = "${data.vsphere_host.host.id}"
  virtual_switch_name = "${var.network}"
}
# VM Network Portgroup
resource "vsphere_host_port_group" "vm" {
  name                = "DEMO-VM_Network"
  host_system_id      = "${data.vsphere_host.host.id}"
  virtual_switch_name = "${var.network}"
}
