# Do not use Terraform 0.12 or greater until the vSphere provider is released for it. 
terraform {
  required_version = "<= 0.11.13"
}

# TERRAFORM ENTERPRISE PROVIDER 
provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.tfe_user_token}"
}
###########################
###### ALL WORKSPACES #####
###########################

# TAGS WORKSPACE - Standardize and manage tags accross multiple vCenters.
resource "tfe_workspace" "tags" {
  name              = "tags"
  organization      = "${var.org}"
  working_directory = "${var.tags_working_directory}"

  vcs_repo = {
    identifier     = "${var.vcs_repo_identifier}"
    oauth_token_id = "${var.tfe_oauth_token}"
  }
}