
terraform {
  required_version = "= 0.11.13"
}
data "vsphere_datacenter" "datacenter" {
  name = "${var.dc}"
}
data "vsphere_host" "esxi_host" {
  name          = "${var.host}"
  datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
}
# Management Network Portgroup
resource "vsphere_host_port_group" "mgmt" {
  name                = "DEMO-MGMT_Network"
  host_system_id      = "${data.vsphere_host.esxi_host.id}"
  virtual_switch_name = "${var.vswitch_name}"
}
# vMotion Network Portgroup
resource "vsphere_host_port_group" "vmotion" {
  name                = "DEMO-vMotion Network"
  host_system_id      = "${data.vsphere_host.esxi_host.id}"
  virtual_switch_name = "${var.vswitch_name}"
}
# VM Network Portgroup
resource "vsphere_host_port_group" "vm" {
  name                = "DEMO-VM_Network"
  host_system_id      = "${data.vsphere_host.esxi_host.id}"
  virtual_switch_name = "${var.vswitch_name}"
}
