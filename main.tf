provider "aws" {
  region = var.region
}

resource "aws_timestreamwrite_database" "example" {
  database_name = "database-example"
}
