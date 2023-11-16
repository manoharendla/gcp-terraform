variable "delegate_from" {
  description = "Allow either user:user.name@example.com, group:deployers@example.com, or serviceAccount:sa1@project.iam.gserviceaccount.com to impersonate the created service account."
  type        = list(string)
}

variable "google_project_id" {
  description = "Name of the gcp project"
  type        = string
}

variable "prefix" {}
