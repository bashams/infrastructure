## **DESCRIPTION**

This is the terraform module to provide simple VM in Yandex Cloud.

This module was created as a homework during yandex-practicum DEVOPS course.

## **VERSIONS**
**terraform** = ">=1.1.4"

**yandex-cloud provider** = "0.61.0"

## **Input variables**

`vm_count` - VM number to create" (default = 1)

`vm_name` - Yandex Cloud VM name

`platform_id` - Yandex Cloud platfrom id (default     = "standard-v1")

`zone` - Yandex Cloud zone (default = "ru-central1-a")

`cores` - cores number for VM (default = 2)

`memory` - memory (in GB) for VM (default = 2)

`image_id` - image id for VM (default = fd8kdq6d0p8sij7h5qe3 | ubuntu-20-04-lts-v20220822 )
*NOTE: use* `yc compute image list --folder-id standard-images` *to list all available images*

`size` - disk size (in GB) for VM (default = 10)

`preemptible` - preemptible VM or not (default = true)
*NOTE: read more* [here]( https://cloud.yandex.ru/docs/compute/concepts/preemptible-vm )

`subnet_id` - subnet id for VM in Yandex Cloud
*NOTE: read more* [here]( https://cloud.yandex.ru/docs/vpc/concepts/ )

`nat` - nat (public ip) for VM in Yandex Cloud (default = true)
*NOTE: read more* [here]( https://cloud.yandex.ru/docs/vpc/concepts/ )

`user_data_file` - path to cloud_config.yaml file with VM user info (default cloud_config.yaml)

*NOTE: syntax of cloud_config.yaml:*
```
#cloud-config
users:
  - name: <username>
    groups: sudo
    shell: /bin/bash
    sudo: ['ALL=(ALL) NOPASSWD:ALL']
    ssh_authorized_keys:
      - <paste your SSH public key here>
```

## **Output variables**

`vm_name` - yandex_compute_instance (VM) name

`private_ip_address` - VM private address

`public_ip_address` - VM public address
