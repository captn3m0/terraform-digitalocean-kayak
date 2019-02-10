resource "digitalocean_ssh_key" "default" {
  name       = "kayak-key"
  public_key = "${var.ssh_key}"
}

resource "digitalocean_droplet" "droplet" {
  image              = "coreos-stable"
  name               = "kayak.${var.domain}"
  region             = "${var.region}"
  size               = "${var.size}"
  ipv6               = true
  private_networking = true
  resize_disk        = true

  ssh_keys = ["${digitalocean_ssh_key.default.fingerprint}"]

  user_data = "${module.ignition.config}"
}
