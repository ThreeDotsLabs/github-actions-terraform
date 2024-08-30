terraform {
  backend "gcs" {
    bucket = "tdl-github-actions-terraform-state"
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  owner = "ThreeDotsLabs"
}

resource "github_repository" "repo" {
  name        = "github-actions-terraform"
  description = "Example repository last updated ${timestamp()}"
}
