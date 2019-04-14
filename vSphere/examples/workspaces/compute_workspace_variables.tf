# These are the variables created for the Tags Workspace.

# TERRAFORM VARIABLES
resource "tfe_variable" "compute-base-vm_dc" {
  key      = "datacenter"
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

# ENV VARIABLES
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