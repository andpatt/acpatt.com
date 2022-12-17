terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
    }
    uptimerobot = {
      source = "louy/uptimerobot"
      version = "0.5.1"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~>2.0"
    }
  }
  required_version = ">= 0.13"
}
