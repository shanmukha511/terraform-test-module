module "external-ip" {
  source = "./static-ext-ip"

  static-ip-name = "${var.static-ip-name}"
  region         = "${var.region}"
}

module "vm-static-external-ip" {
  source = "./win-vm-with-external-ip"

  vm_name      = "${var.vm_name}"
  zone         = "${var.zone}"
  region       = "${var.region}"
  subnet       = "${var.subnet}"
  network      = "${var.network}"
  machine_type = "${var.machine_type}"
  image        = "${var.image}"
  disk_size    = "${var.disk_size}"

}

module "vm-static-internal-ip" {
  source = "./win-vm-with-internal-ip"

  vm_name      = "${var.vm_name}"
  zone         = "${var.zone}"
  region       = "${var.region}"
  subnet       = "${var.subnet}"
  network      = "${var.network}"
  machine_type = "${var.machine_type}"
  image        = "${var.image}"
  disk_size    = "${var.disk_size}"

}
