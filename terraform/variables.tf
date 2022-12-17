# Common variables
variable "secrets" {
    type = map(string)
    sensitive = true
    default = {
  "key" = "secret_Value"
    }
}
variable "hostname" {
    default = "@"
}