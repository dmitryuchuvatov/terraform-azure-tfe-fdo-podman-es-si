variable "environment_name" {
  type        = string
  description = "Name used to create and tag resources"
}

variable "region" {
  type        = string
  description = "Azure region to deploy in"
}

variable "vnet_cidr" {
  type        = string
  description = "The IP range for the VNet in CIDR format"
}

variable "admin_username" {
  type        = string
  description = "Admin username to access the TFE instance via SSH"
}

variable "postgresql_user" {
  description = "PostgreSQL user"
  type        = string
}

variable "postgresql_password" {
  description = "PostgreSQL password"
  type        = string
}

variable "storage_name" {
  type        = string
  description = "Name used to create storage account. Can contain ONLY lowercase letters and numbers; must be unique across all existing storage account names in Azure"
}

variable "route53_zone" {
  description = "The domain used in the URL"
  type        = string
}

variable "route53_subdomain" {
  description = "The subdomain of the URL"
  type        = string
}

variable "cert_email" {
  description = "Email address used to obtain SSL certificate"
  type        = string
}

variable "aws_region" {
  type        = string
  description = "The region to deploy resources in"
}

variable "tfe_release" {
  description = "TFE release"
  type        = string
}

variable "tfe_license" {
  description = "TFE license"
  type        = string
}

variable "tfe_password" {
  description = "TFE password"
  type        = string
}