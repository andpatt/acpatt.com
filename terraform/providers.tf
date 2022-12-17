provider "uptimerobot" {
  api_key = var.secrets["uptimerobot_api_key"]
}

provider "cloudflare" {
  email   = var.secrets["cloudflare_email"]
  api_token = var.secrets["cloudflare_api_token"]
  #api_key = var.secrets["cloudflare_api_key"]
}
