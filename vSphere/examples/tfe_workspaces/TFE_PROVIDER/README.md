# TFE PROVIDER

This example demonstrates how you can use the TFE Provider to provision Terraform Enterprise workspaces.

# TFE PROVIDER
hostname = "<your_tfe_address>"
org = "<tfe_org_name>"
tfe_oauth_token = "<oauth_token>" i.e: '''ot-gNasdWizFtVje6SC'''
tfe_user_token = "<token>"
tfe_org_token = "<token>"

For each new workspace you want to create
1. Create a new '''workspace-<name>.tf''' file
2. Modify the '''tfe_workspace''' resource for the new workspace
3. Add the necessary '''tfe_variables''' resources.
4. Plan & Apply
5. Enjoy your new workspace.


TODO: Add details to readme for this demo and add a '''terraform.auto.vars.example''' file for reference.
