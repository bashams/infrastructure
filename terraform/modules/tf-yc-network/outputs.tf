output "yandex_vpc_subnet" {
  description = "Yandex.Cloud Subnets map"
  value       = data.yandex_vpc_subnet.default
} 