# TERRAFORM ENTERPRISE PROVIDER 
provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.tfe_user_token}"
}

# TERRAFORM ENTERPRISE REMOTE BACKEND
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