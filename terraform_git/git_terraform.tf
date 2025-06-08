terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}



resource "github_repository" "example" {
  name        = var.git
  description = "learning Data engineering"

  visibility = "public"

}
