//--------------------------------------------------------------------
// Modules
module "virtual_machine" {
  source  = "ptfe.this-demo.rocks/VMware-Demo/virtual-machine/vsphere"
  version = "1.0.1"

  datacenter = "${var.dc}"
  datastore = "${var.datastore}"
  network = "${var.network}"
  resource_pool = "${var.resource_pool}"
  vm_name_prefix = "${var.vm_name_prefix}"
}