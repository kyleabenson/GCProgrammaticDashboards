locals {
  owner        = "Community Team"
}

resource "google_monitoring_dashboard" "dashboard" {
  project = "${var.project_id}"
  dashboard_json = jsonencode({
    displayName = "KB Test"
    mosaicLayout = {
      columns = 12
      tiles = [
        {
          width = 12
          height = 7
          widget = {
            title = "Text Widget"
            text = {
              content = "# Hello World!"
              format = "MARKDOWN"
              style = {
                backgroundColor = "#FFFFFF"
                fontSize = "FS_LARGE"
                horizontalAlignment = "H_LEFT"
                padding = "P_EXTRA_SMALL"
                pointerLocation = "POINTER_LOCATION_UNSPECIFIED"
                textColor = "#212121"
                verticalAlignment = "V_TOP"
              }
            }
          }
        },
        { 
          yPos = 7
          width = 12
          height = 7
          widget = {
            title = "Text Widget"
            text = {
              content = locals.owner
              format = "MARKDOWN"
              style = {
                backgroundColor = "#FFFFFF"
                fontSize = "FS_LARGE"
                horizontalAlignment = "H_LEFT"
                padding = "P_EXTRA_SMALL"
                pointerLocation = "POINTER_LOCATION_UNSPECIFIED"
                textColor = "#212121"
                verticalAlignment = "V_TOP"
              }
            }
          }
        }
      ]
    }
    dashboardFilters = []
    labels = {}
  })

}