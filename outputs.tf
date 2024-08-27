output "dashboard" {
  description = "Dump of dashboard object"
  value       = jsondecode(resource.google_monitoring_dashboard.dashboard.dashboard_json)
}