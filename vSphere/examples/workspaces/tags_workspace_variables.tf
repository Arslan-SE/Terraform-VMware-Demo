# TAGS WORKSPACE - Standardize and manage tags accross multiple vCenters.
resource "tfe_workspace" "tags" {
  name              = "Tags"
  organization      = "${var.org}"
  working_directory = "${var.tags_working_directory}"

  vcs_repo = {
    identifier     = "${var.vcs_repo_identifier}"
    oauth_token_id = "${var.tfe_oauth_token}"
  }
}

# TERRAFORM VARIABLES
# -----None----

# ENVIRONMENT VARIABLES
resource "tfe_variable" "VSPHERE_USER" {
  key          = "VSPHERE_USER"
  value        = "${var.VSPHERE_USER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.tags.id}"
}
resource "tfe_variable" "VSPHERE_PASSWORD" {
  key          = "VSPHERE_PASSWORD"
  value        = "${var.VSPHERE_PASSWORD}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.tags.id}"
}
resource "tfe_variable" "VSPHERE_SERVER" {
  key          = "VSPHERE_SERVER"
  value        = "${var.VSPHERE_SERVER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.tags.id}"
}
resource "tfe_variable" "VSPHERE_ALLOW_UNVERIFIED_SSL" {
  key          = "VSPHERE_ALLOW_UNVERIFIED_SSL"
  value        = "${var.VSPHERE_ALLOW_UNVERIFIED_SSL}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.tags.id}"
}
resource "tfe_variable" "confirm_destroy" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.tags.id}"
}