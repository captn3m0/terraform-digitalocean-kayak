module "ignition" {
  source  = "captn3m0/docker-api/ignition"
  version = "1.0.0"

  ca_subject = {
    common_name = "ca.docker.${var.domain}"
  }

  client_subject = {
    common_name = "client.docker.${var.domain}"
  }

  server_subject = {
    common_name = "docker.${var.domain}"
  }
}
