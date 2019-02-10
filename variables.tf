variable "domain" {
  description = "root domain for the kubernetes cluster"
}

variable "cert_path" {
  description = "where to store the certificates"
}

variable "region" {
  description = "digital ocean region"
  default     = "blr1"
}

variable "size" {
  description = "digital ocean size"
  default     = "1gb"
}

variable "ssh_key" {
  description = "SSH Key to be addded to the controller server"
}
