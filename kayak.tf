module "kayak" {
  source  = "captn3m0/kayak/docker"
  version = "0.0.2"

  cluster_name  = "${var.domain}"
  etcd_domain   = "etcd.${var.domain}"
  etcd_data_dir = "/data"
  asset_dir     = "${var.asset_dir}"
  host_ip       = "${digitalocean_droplet.droplet.ipv4_address_private}"
}
