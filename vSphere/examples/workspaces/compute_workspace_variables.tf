# These are the variables created for the Tags Workspace.

# TERRAFORM VARIABLES
resource "tfe_variable" "compute-base-vm_dc" {
  key      = "dc"
  value    = "${var.dc}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute-base-vm_datastore" {
  key      = "datastore"
  value    = "${var.datastore}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute-base-vm_network" {
  key      = "network"
  value    = "${var.network}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute-base-vm_resource_pool" {
  key      = "resource_pool"
  value    = "${var.resource_pool}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute-base-vm_vm-name-prefix" {
  key      = "vm_name_prefix"
  value    = "${var.vm-name-prefix}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}

resource "tfe_variable" "compute-base-vm_disk_size" {
  key      = "disk_size"
  value    = "${var.disk_size}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}

resource "tfe_variable" "compute-base-guest_id" {
  key      = "guest_id"
  value    = "${var.guest_id}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute-base-memory" {
  key      = "memory"
  value    = "${var.memory}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute-base-vm_count" {
  key      = "vm_count"
  value    = "${var.vm_count}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute-base-wait_for_guest_net_timeout" {
  key      = "wait_for_guest_net_timeout"
  value    = "${var.wait_for_guest_net_timeout}"
  category = "terraform"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}

# ENV VARIABLES
resource "tfe_variable" "compute_VSPHERE_USER" {
  key          = "VSPHERE_USER"
  value        = "${var.VSPHERE_USER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute_VSPHERE_PASSWORD" {
  key          = "VSPHERE_PASSWORD"
  value        = "${var.VSPHERE_PASSWORD}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute_VSPHERE_SERVER" {
  key          = "VSPHERE_SERVER"
  value        = "${var.VSPHERE_SERVER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute_VSPHERE_ALLOW_UNVERIFIED_SSL" {
  key          = "VSPHERE_ALLOW_UNVERIFIED_SSL"
  value        = "${var.VSPHERE_ALLOW_UNVERIFIED_SSL}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}
resource "tfe_variable" "compute_confirm_destroy" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.compute-base-vm.id}"
}