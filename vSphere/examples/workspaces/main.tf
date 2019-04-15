# TERRAFORM ENTERPRISE PROVIDER 
provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.tfe_user_token}"
}
provider "vsphere" {
  user           = "${var.VSPHERE_USER}"
  password       = "${var.VSPHERE_PASSWORD}"
  vsphere_server = "${var.VSPHERE_SERVER}"
  # If you have a self-signed cert
  allow_unverified_ssl = "${var.VSPHERE_ALLOW_UNVERIFIED_SSL}"
}
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
# DATASOURCES
data "tfe_workspace" "this" {
  name         = "Workspace-Manager"
  organization = "VMware-Demo"
}
data "vsphere_datacenter" "dc" {
  name = "${var.dc}"
}

// The cluster's id (When you are not deploying to a resource pool or it doesn't exist)
data "vsphere_compute_cluster" "cluster" {
  name          = "${var.resource_pool}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
# ENV VARIABLES
resource "tfe_variable" "this_VSPHERE_USER" {
  key          = "VSPHERE_USER"
  value        = "${var.VSPHERE_USER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${data.tfe_workspace.this.id}"
}
resource "tfe_variable" "this_VSPHERE_PASSWORD" {
  key          = "VSPHERE_PASSWORD"
  value        = "${var.VSPHERE_PASSWORD}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${data.tfe_workspace.this.id}"
}
resource "tfe_variable" "this_VSPHERE_SERVER" {
  key          = "VSPHERE_SERVER"
  value        = "${var.VSPHERE_SERVER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${data.tfe_workspace.this.id}"
}
resource "tfe_variable" "this_VSPHERE_ALLOW_UNVERIFIED_SSL" {
  key          = "VSPHERE_ALLOW_UNVERIFIED_SSL"
  value        = "${var.VSPHERE_ALLOW_UNVERIFIED_SSL}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${data.tfe_workspace.this.id}"
}
resource "tfe_variable" "this_confirm_destroy" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${data.tfe_workspace.this.id}"
}

