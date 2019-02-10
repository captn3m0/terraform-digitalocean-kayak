module "docker-api" {
  source  = "captn3m0/docker-api/ignition"
  version = "1.0.0"

  cert_path = "${var.cert_path}"

  client_subject = {
    common_name = "client.docker.${var.domain}"
  }

  ca_subject = {
    common_name = "ca.docker.${var.domain}"
  }

  server_subject = {
    common_name = "docker.${var.domain}"
  }
}
