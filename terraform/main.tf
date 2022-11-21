#подключаем модуль сети
module "tf-yc-network" {
  source = "./modules/tf-yc-network"
  zone = "ru-central1-b"
}

#подключаем модуль виртуальных машин
module "tf-yc-instance" {
  source = "./modules/tf-yc-instance"
  vm_name = "chapter5-lesson02-bulat"
  image_id = "fd8kdq6d0p8sij7h5qe3"
  zone = "ru-central1-b"
#определяем subnet_id и передаем его в модуль
  subnet_id = "${module.tf-yc-network.yandex_vpc_subnet.id}"
}
