locals {
  common_tags = {
    "Manage_by"   = "Terraform"
    "Project"     = var.project_name
    "Environment" = var.env
  }

  name_prefix = "${var.project_name}-${var.env}"
}
