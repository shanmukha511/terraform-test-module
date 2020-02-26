output "external-static-ip" {
  value = "${module.external-ip.ip}"
}
output "external-vm-external-ip" {
  value = "${module.vm-static-external-ip.ip}"
}
output "external-vm-internal-ip" {
  value = "${module.vm-static-external-ip.internal-ip}"
}
output "internal-vm-internal-ip" {
  value = "${module.vm-static-internal-ip.internal-ip}"
}
