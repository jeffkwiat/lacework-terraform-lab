terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
      version = "~>0.3"
    }
  }
}

provider "lacework" {
  profile = var.profile-lacework
}