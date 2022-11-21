resource "yandex_compute_instance" "test_vm" {
    # имя виртуальной машины:
    name = var.vm_name
    platform_id = var.platform_id
    zone = var.zone
    # число создаваемых машин
    count = var.vm_count

    resources {
        cores  = var.cores
        memory = var.memory
    }

    boot_disk {
        initialize_params {
            image_id = var.image_id
        }
    }

    #прерываемая ли машина:
    scheduling_policy {
        preemptible = var.preemptible
        }


    network_interface {
        subnet_id = var.subnet_id
        # назначать ли публичный адрес:
        nat = var.nat
    }

    #создаем пользователя ВМ:
    metadata = {
        user-data = "${file(var.user_data_file)}"
    }

}