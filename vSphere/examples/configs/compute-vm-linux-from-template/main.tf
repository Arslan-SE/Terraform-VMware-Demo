//--------------------------------------------------------------------
// Modules

module "virtual_machines" {
  source                     = "ptfe.this-demo.rocks/VMware-Demo/virtual-machine/vsphere"
  version                    = "1.0.1"
  datacenter                 = "${var.dc}"
  datastore                  = "${var.datastore}"
  disk_size                  = "${var.disk_size}"
  guest_id                   = "${var.guest_id}"
  memory                     = "${var.memory}"
  network                    = "${var.network}"
  resource_pool              = "${var.resource_pool}"
  vm_count                   = "${var.vm_count}"
  vm_name_prefix             = "${var.vm_name_prefix}"
  wait_for_guest_net_timeout = "${var.wait_for_guest_net_timeout}"
}

output "virtual_machine_names" {
  value = "${module.virtual_machines.virtual_machine_names}"
}

output "virtual_machine_ids" {
  value = "${module.virtual_machines.virtual_machine_ids}"
}

output "virtual_machine_default_ips" {
  value = "${module.virtual_machines.virtual_machine_default_ips}"
}