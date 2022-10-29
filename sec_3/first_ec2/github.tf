# https://registry.terraform.io/providers/integrations/github/5.6.0

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token        = "xxx"
}

resource "github_repository" "terraform-repo" {
  name        = "terraform-repo"
  visibility = "public"

}