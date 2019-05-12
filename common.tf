# This file is shared between all provisioners (digital ocean/aws/...)
module "ignition" {
  source    = "captn3m0/docker-api/ignition"
  version   = "1.0.4"
  cert_path = "${var.cert_path}"

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

output "docker_ca_cert" {
  value = "${module.ignition.ca-cert}"
}

output "docker_client_cert" {
  value = "${module.ignition.client-cert}"
}

output "docker_client_key" {
  value = "${module.ignition.client-key}"
}
