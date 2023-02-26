terraform {
  backend "http" {
    address = "https://gitlab.com/api/v4/projects/43851271/terraform/state/main"
    lock_address = "https://gitlab.com/api/v4/projects/43851271/terraform/state/main/lock"
    unlock_address = "https://gitlab.com/api/v4/projects/43851271/terraform/state/main/lock"
    lock_method    = "POST"
    unlock_method  = "DELETE"

  }
}