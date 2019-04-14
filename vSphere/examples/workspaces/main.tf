# Do not use Terraform 0.12 or greater until the vSphere provider is released for it. 
terraform {
    backend "remote" {
    organization = "VMware-Demo"
    hostname = "ptfe.this-demo.rocks"
    workspaces {
      name = "Workspace-Manager"
    }
  }
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
  name              = "Tags"
  organization      = "${var.org}"
  working_directory = "${var.tags_working_directory}"

  vcs_repo = {
    identifier     = "${var.vcs_repo_identifier}"
    oauth_token_id = "${var.tfe_oauth_token}"
  }
}

# NETWORK WORKSPACE - Deploy your vSwitches and Portgroups to be consumed by services.
resource "tfe_workspace" "network" {
  name              = "Networks"
  organization      = "${var.org}"
  working_directory = "${var.network_working_directory}"

  vcs_repo = {
    identifier     = "${var.vcs_repo_identifier}"
    oauth_token_id = "${var.tfe_oauth_token}"
  }
}

# BASE-VM WORKSPACE - Deploy your vSwitches and Portgroups to be consumed by services.
resource "tfe_workspace" "compute-base-vm" {
  name              = "Base-VM"
  organization      = "${var.org}"
  working_directory = "${var.compute-base-vm_working_directory}"

  vcs_repo = {
    identifier     = "${var.vcs_repo_identifier}"
    oauth_token_id = "${var.tfe_oauth_token}"
  }
}