variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "T339c2081-e9b6-4404-a749-6a57e9c8f02e"
}

# Define the primary location for resources
variable "primary_location" {
  default = "East US"
}

# Define the secondary location for resources
variable "secondary_location" {
  default = "West US"
}

# Define the admin username for the virtual machine
variable "vm_admin_username" {
  description = "Admin username for the VM"
  default     = "Azureuser"
  type        = string
}

# Define the admin password for the virtual machine
variable "vm_admin_password" {
  description = "Admin password for the VM"
  type        = string
  default     = "P@ssw0rd1234"
  sensitive   = true
}

# Define the environment (e.g., dev, prod)
variable "environment" {
  default = "dev"
}