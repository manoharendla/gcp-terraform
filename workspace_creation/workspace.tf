resource "databricks_mws_workspaces" "this" {
  provider       = databricks.accounts
  account_id     = var.databricks_account_id
  workspace_name = var.databricks_workspace_name
  location       = data.google_client_config.current.region

  cloud_resource_container {
    gcp {
      project_id = data.google_client_config.current.project
    }
  }
}

data "databricks_group" "admins" {
  depends_on   = [ databricks_mws_workspaces.this ]
  provider     = databricks.workspace
  display_name = "admins"
}

resource "databricks_user" "me" {
  depends_on = [ databricks_mws_workspaces.this ]
  provider   = databricks.workspace
  user_name  = data.google_client_openid_userinfo.me.email
}

resource "databricks_group_member" "allow_me_to_login" {
  depends_on = [ databricks_mws_workspaces.this ]
  provider   = databricks.workspace
  group_id   = data.databricks_group.admins.id
  member_id  = databricks_user.me.id
}

output "workspace_url" {
  value = databricks_mws_workspaces.this.workspace_url
}