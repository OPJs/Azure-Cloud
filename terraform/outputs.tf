output "public_ip_address" {
  description = "Adresse IP publique de la VM"
  value       = azurerm_public_ip.main.ip_address
}

output "fqdn" {
  description = "Nom DNS complet de la VM"
  value       = azurerm_public_ip.main.fqdn
}
