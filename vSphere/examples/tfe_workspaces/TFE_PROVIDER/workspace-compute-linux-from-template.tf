# BASE-VM WORKSPACE - Deploy your vSwitches and Portgroups to be consumed by services.
resource "tfe_workspace" "compute-linux" {
  name              = "Linux-From-Template"
  organization      = "${var.org}"
  working_directory = "${var.compute-linux_working_directory}"
   auto_apply        = true
  vcs_repo = {
    identifier     = "${var.vcs_repo_identifier}"
    oauth_token_id = "${var.tfe_oauth_token}"
  }
}

# TERRAFORM VARIABLES
resource "tfe_variable" "compute-linux_dc" {
  key      = "dc"
  value    = "${var.dc}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux_datastore" {
  key      = "datastore"
  value    = "${var.datastore}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux_resource_pool" {
  key      = "resource_pool"
  value    = "${var.resource_pool}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux_vm-name-prefix" {
  key      = "vm_name_prefix"
  value    = "${var.vm-name-prefix}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}

resource "tfe_variable" "compute-linux_disk_size" {
  key      = "disk_size"
  value    = "${var.disk_size}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}

resource "tfe_variable" "compute-linux-guest_id" {
  key      = "guest_id"
  value    = "${var.guest_id}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux-memory" {
  key      = "memory"
  value    = "${var.memory}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux_count" {
  key      = "vm_count"
  value    = "${var.vm_count}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux-wait_for_guest_net_timeout" {
  key      = "wait_for_guest_net_timeout"
  value    = "${var.wait_for_guest_net_timeout}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}

# NETWORK
resource "tfe_variable" "compute-linux_network" {
  key      = "network"
  value    = "${var.network}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux-ipv4" {
  key      = "ipv4_network_address"
  value    = "${var.ipaddress}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}

resource "tfe_variable" "compute-linux-gateway" {
  key      = "ipv4_gateway"
  value    = "${var.vmgateway}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}

resource "tfe_variable" "compute-linux-dns" {
  key      = "dns_servers"
  value    = "${var.vmdns}"
  category = "terraform"
  hcl = true
  workspace_id = "${tfe_workspace.compute-linux.id}"
}

# ENV VARIABLES
resource "tfe_variable" "compute-linux-VSPHERE_USER" {
  key          = "VSPHERE_USER"
  value        = "${var.VSPHERE_USER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux-VSPHERE_PASSWORD" {
  key          = "VSPHERE_PASSWORD"
  value        = "${var.VSPHERE_PASSWORD}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux-VSPHERE_SERVER" {
  key          = "VSPHERE_SERVER"
  value        = "${var.VSPHERE_SERVER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux-VSPHERE_ALLOW_UNVERIFIED_SSL" {
  key          = "VSPHERE_ALLOW_UNVERIFIED_SSL"
  value        = "${var.VSPHERE_ALLOW_UNVERIFIED_SSL}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}
resource "tfe_variable" "compute-linux-confirm_destroy" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.compute-linux.id}"
}