

resource "lacework_alert_channel_datadog" "alert_channel_datadog" {
  name      = "Datadog Alerts"
  datadog_site = "com"
  datadog_service = "Logs Detail"
  api_key = "<YOUR-API-KEY>"
}