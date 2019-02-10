output "droplet_ipv4" {
  value       = "${digitalocean_droplet.droplet.ipv4_address}"
  description = "Droplet IPV4 Address"
}

output "droplet_ipv6" {
  value       = "${digitalocean_droplet.droplet.ipv6_address}"
  description = "Droplet IPV6 Address"
}

output "droplet_ipv4_private" {
  value       = "${digitalocean_droplet.droplet.ipv4_address_private}"
  description = "Droplet's private IPV4 Address"
}

output "droplet_ipv6_private" {
  value       = "${digitalocean_droplet.droplet.ipv6_address_private}"
  description = "Droplet private IPV6 Address"
}
