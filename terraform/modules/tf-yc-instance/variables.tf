variable "vm_count" {
  type = number
  description = "VM number to create"
  default = 1
} 

variable "vm_name" {
  type = string
  description = "Yandex Cloud VM name"
  default     = "test vm"
} 

variable "platform_id" {
  type = string
  description = "Yandex Cloud platfrom id"
  default     = "standard-v1"
} 

variable "zone" {
  type = string
  default = "ru-central1-a" 
} 

variable "cores" {
  type = number
  default = 2
} 

variable "memory" {
  type = number
  default = 2
} 

variable "image_id" {
  type = string
  description = "disk image for VM"
  # default is Ubuntu 20.04
  default = "fd8kdq6d0p8sij7h5qe3" 
} 

variable "size" {
  type = number
  description = "disk size for VM (GB)" 
  default = 10
} 

variable "preemptible" {
  type = bool
  description = "preemptible VM or not"
  default = true
} 
    
variable "subnet_id" {
  type = string
  description = "yandex subnet id"
  default = "e9begc9roogev5gqv4ou"
} 

variable "nat" {
  type = bool
  description = "use nat (public ip) for VM or not"
  default = true
} 

variable "user_data_file" {
  type = string
  description = "File with user description"
  default = "cloud_config.yaml"
} 