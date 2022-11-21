## **DESCRIPTION**

This is the terraform module to *manage networking* for VM in Yandex Cloud.

This module was created as a homework during yandex-practicum DEVOPS course.

## **VERSIONS**
**terraform** = ">=1.1.4"

**yandex-cloud provider** = "0.61.0"

## **Input variables**

`zone` (default = ru-central1-a)

*NOTE: read more about zones* [here]( https://cloud.yandex.ru/docs/overview/concepts/geo-scope )

## **Output variables**

`yandex_vpc_subnet` - subnet object for giving zone and network default

*NOTE: read more about vpc_subnet* [here]( https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet )

You can use this object for VM instance module:
```
#set subnet_id for VM
subnet_id = "${module.tf-yc-network.yandex_vpc_subnet.id}"
```
