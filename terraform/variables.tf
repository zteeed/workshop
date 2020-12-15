variable "credentials" {
  type = object({
    access_key = string
    secret_key = string
  })
  description = "Description for the Outscale credentials object"
}

variable "storage" {
  type = number
  validation {
    condition = var.storage >= 10
    error_message = "Storage has to be > 10G."
  }
  default = 10
}

variable "name" {
  type = string
  default = "nginx"
}
