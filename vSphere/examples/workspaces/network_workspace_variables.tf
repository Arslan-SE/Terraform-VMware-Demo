# These are the variables created for the Tags Workspace.

# TERRAFORM VARIABLES
resource "tfe_variable" "dc" {
  key          = "Datacenter_Name"
  value        = "${var.dc}"
  category     = "terraform"
  sensitive    = "false"
  workspace_id = "${tfe_workspace.network.id}"
}
resource "tfe_variable" "host" {
  key          = "Host_Name"
  value        = "${var.host}"
  category     = "terraform"
  sensitive    = "false"
  workspace_id = "${tfe_workspace.network.id}"
}
resource "tfe_variable" "vswitch_name" {
  key          = "vSwitch_Name"
  value        = "${var.vswitch_name}"
  category     = "terraform"
  sensitive    = "false"
  workspace_id = "${tfe_workspace.network.id}"
}

# ENVIRONMENT VARIABLES
resource "tfe_variable" "network_VSPHERE_USER" {
  key          = "VSPHERE_USER"
  value        = "${var.VSPHERE_USER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.network.id}"
}
resource "tfe_variable" "network_VSPHERE_PASSWORD" {
  key          = "VSPHERE_PASSWORD"
  value        = "${var.VSPHERE_PASSWORD}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.network.id}"
}
resource "tfe_variable" "network_VSPHERE_SERVER" {
  key          = "VSPHERE_SERVER"
  value        = "${var.VSPHERE_SERVER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.network.id}"
}
resource "tfe_variable" "network_VSPHERE_ALLOW_UNVERIFIED_SSL" {
  key          = "VSPHERE_ALLOW_UNVERIFIED_SSL"
  value        = "${var.VSPHERE_ALLOW_UNVERIFIED_SSL}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.network.id}"
}
resource "tfe_variable" "network_confirm_destroy" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.network.id}"
}