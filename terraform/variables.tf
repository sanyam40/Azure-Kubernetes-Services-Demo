# Terraform Variables for the Azure resources    
variable "subscription_id" {
  type        = string
  description = "The subscription ID to use for the Azure resources"
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID to use for the Azure resources"
}

# Resources Group Variables
variable "resource_group_name" {
  type        = string
  default     = "delete-me-aks"
  description = "The name of the resource group in which to create the resources"
}

variable "deploy_resource_group" {
  type        = bool
  default     = true
  description = "Whether to deploy the main resource group"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "The environment in which the resources will be created"
}

variable "location" {
  type        = string
  default     = "Central india"
  description = "The location/region where the resources will be created"
}