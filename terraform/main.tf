data "cloudflare_zones" "primary" {
  filter {
    name = "acpatt.com"
  }
}

data "uptimerobot_account" "account" {}

data "uptimerobot_alert_contact" "alerts" {
  friendly_name = "alerts"
}


# We need a record pointing to acpatt.gitlab so that cv.acpatt.com points at gitlab pages.
resource "cloudflare_record" "cname" {
  zone_id = data.cloudflare_zones.primary.zones[0].id
  name    = var.hostname
  value   = "acpatt.gitlab.io"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "challenge" {
  zone_id = data.cloudflare_zones.primary.zones[0].id
  name    = "_gitlab-pages-verification-code"
  value   = "gitlab-pages-verification-code=a04b092520bff24de08b7e58148010cc"
  type    = "TXT"
}

resource "uptimerobot_monitor" "monitor" {
  friendly_name = "__main__ Monitor"
  type          = "http"
  url           = "https://${data.cloudflare_zones.primary.zones[0].name}"
  interval      = 300

  alert_contact {
    id = data.uptimerobot_alert_contact.alerts.id
  }
}
