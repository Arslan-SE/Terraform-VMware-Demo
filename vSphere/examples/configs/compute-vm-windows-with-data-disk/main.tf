//--------------------------------------------------------------------
// Modules
module "vm" {
  source  = "ptfe.this-demo.rocks/VMware-Demo/vm/vsphere"
  version = "0.9.14"

  cpu_number = 4
  data_disk = "true"
  data_disk_size_gb = 20
  dc = "PacketDatacenter"
  ds_cluster = "DatastoreCluster"
  instances = 1
  ipaddress = ["10.100.0.223"]
  ipv4submask = "255.255.255.0"
  is_windows_image = "true"
  ram_size = 8
  vlan = "VM Network"
  vmdns = ["8.8.8.8"]
  vmfolder = "TopGolf-Demo"
  vmgateway = "10.100.0.1"
  vmname = "Windows-Test"
  vmrp = "MainCluster/Resources"
  vmtemp = "win2012"
  winadminpass = "Hashi123"
}
