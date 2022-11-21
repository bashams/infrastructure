output "vm_name" {
    value = yandex_compute_instance.test_vm[*].name
}

output "private_ip_address" {
    value = yandex_compute_instance.test_vm[*].network_interface.0.ip_address
}

output "public_ip_address" {
    value = yandex_compute_instance.test_vm[*].network_interface.0.nat_ip_address
}
