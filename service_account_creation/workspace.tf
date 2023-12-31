resource "google_service_account" "sa2" {
  account_id   = "${var.prefix}sa2"
  display_name = "Service account for Databricks resource provisioning"
}


resource "google_service_account_iam_policy" "impersonatable" {
  service_account_id = google_service_account.sa2.name
  policy_data        = data.google_iam_policy.this.policy_data
}

resource "google_project_iam_custom_role" "workspace_creator" {
  role_id     = "${var.prefix}workspacecreator"
  title       = "Databricks workspace creator"
  permissions = [
    "iam.serviceAccounts.getIamPolicy",
    "iam.serviceAccounts.setIamPolicy",
    "iam.roles.create",
    "iam.roles.delete",
    "iam.roles.get",
    "iam.roles.update",
    "resourcemanager.projects.get",
    "resourcemanager.projects.getIamPolicy",
    "resourcemanager.projects.setIamPolicy",
    "serviceusage.services.get",
    "serviceusage.services.list",
    "serviceusage.services.enable"
  ]
}

resource "google_project_iam_member" "sa2_can_create_workspaces" {
  role    = google_project_iam_custom_role.workspace_creator.id
  member  = "serviceAccount:${google_service_account.sa2.email}"
  project = var.google_project_id
}



