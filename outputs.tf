output "ssh_login" {
  description = "SSH login command"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.example.ip_address}"
}

output "tfe_url" {
  description = "URL for TFE login"
  value       = "https://${var.route53_subdomain}.${var.route53_zone}"
}
