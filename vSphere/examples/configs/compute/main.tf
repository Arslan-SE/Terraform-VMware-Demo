//--------------------------------------------------------------------
// Modules
module "virtual_machine" {
  source  = "ptfe.this-demo.rocks/VMware-Demo/virtual-machine/vsphere"
  version = "1.0.1"

  datacenter = "PacketDatacenter"
  datastore = "datastore1"
  network = "DEMO-VM_Network"
  resource_pool = "MainCluster"
  vm_name_prefix = "Project_A-"
}