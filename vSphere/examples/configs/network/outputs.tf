output "mgmt_network" {
  value = ["${vsphere_host_port_group.mgmt.id}"]
}
output "vmotion_network" {
  value = ["${vsphere_host_port_group.vmotion.id}"]
}
output "vm_network" {
  value = ["${vsphere_host_port_group.vm.id}"]
}