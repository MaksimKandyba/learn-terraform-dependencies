resource "fly_app" "databaseApp" {
  name = "kandyba-mysql"
  org  = "personal"
}

data "fly_app" "dbApp" {
  name       = "kandyba-mysql"
  depends_on = [fly_app.databaseApp]
}
