terraform {
  cloud {
    organization = "antymijaljevic-org"

    workspaces {
      name = "demo-workspace"
    }
  }
}
