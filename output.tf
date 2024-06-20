output "outline_public_ip" {
  value = [for IP4 in module.outline : IP4.ec2_public_ip[*]]
}
output "outline_public_dns" {
  value = [for DNS in module.outline : DNS.ec2_public_dns[*]]
}
output "outline_public" {
  value = "${
    zipmap(
      "${module.outline.*.ec2_public_dns}", "${module.outline.*.ec2_public_ip}"
    )
  }"
}