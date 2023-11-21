# gcp-terraform
Repo to hold Terraform code for databricks on GCP. 

## Purpose
The purpose of the script is to automate the process of service account creation, workspace creation, unity catalog creation and creation of sample databases in workspaces.

## How to setup you local workstation for GCP Terraform:

### Install the gcloud sdk,authenticate with GCP and run terraform:
1. https://cloud.google.com/sdk/docs/install
2. From gcloud shell run the following
3. gcloud auth application-default login – to logon to gcp
4. Copy the url and open it in chrome
5. Open gcloud shell
6. SET CLOUDSDK_PYTHOn=C:\Users\PC5273\AppData\Local\Programs\Python\Python310\python
7. Run the terraform
8. cd service_account_creation
9. RUN `terraform init`
10. RUN `terraform plan -var-file=variables.tfvars`
11. RUN `terraform apply -var-file=variables.tfvars`
12. Manually Add the Google service account to the Databricks on Google Cloud account - [DOC_LINK](https://docs.gcp.databricks.com/dev-tools/terraform/gcp-workspace.html#step-2-add-the-google-service-account-to-the-databricks-on-google-cloud-account)
13. cd workspace_creation
14. RUN `terraform init`
15. RUN `terraform plan -var-file=variables.tfvars`
16. RUN `terraform apply -var-file=variables.tfvars`
17. cd unity_catalog_creation
18. RUN `terraform init`
19. RUN `terraform plan -var-file=variables.tfvars`
20. RUN `terraform apply -var-file=variables.tfvars`


### Details on submodules
1. [Service account creation readme](service_account_creation/README.md)
2. [Workspace creation readme](workspace_creation/README.md)
3. [Unity catalog creation readme](unity_catalog_creation/README.md)