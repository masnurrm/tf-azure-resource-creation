variable "resource_group_name" {
  description = "Nama dari resource group yang sudah ada"
  type        = string
}

variable "location" {
  description = "Lokasi untuk resource Azure"
  type        = string
}

variable "vnet_name" {
  description = "Nama dari Virtual Network"
  type        = string
  default     = "vnet-foodie-snap"
}

variable "vnet_address_space" {
  description = "Alamat ruang untuk Virtual Network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Nama dari Subnet"
  type        = string
  default     = "subnet-foodie-snap"
}

variable "subnet_address_prefix" {
  description = "Prefix alamat untuk Subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_ip_name" {
  description = "Nama dari Public IP"
  type        = string
  default     = "public-ip-foodie-snap"
}

variable "nic_name" {
  description = "Nama dari Network Interface"
  type        = string
  default     = "nic-foodie-snap"
}

variable "vm_name" {
  description = "Nama dari Virtual Machine"
  type        = string
  default     = "vm-foodie-snap"
}

variable "vm_size" {
  description = "Ukuran dari VM"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Nama admin untuk login ke VM"
  type        = string
  default     = "azureuser"
}

variable "public_key_path" {
  description = "Path dari public key SSH"
  type        = string
}
