
output "webappPlan_name" {
  description = "Displya Webapp_plan name"
  value = azurerm_service_plan.service_plan.name
}
output "webappPlan_id" {
  description = "Displya Webapp_plan id"
  value = azurerm_service_plan.service_plan.id
}
output "webapp_name" {
  description = "DisplyaWebapp name"
  value = azurerm_windows_web_app.appservice.name
}
output "webapp_id" {
  description = "DisplyaWebapp id"
  value = azurerm_windows_web_app.appservice.id
}

output "webapp_default_hostname" {
  description = "DisplyaWebapp default_hostname"
  value = azurerm_windows_web_app.appservice.default_hostname
}
