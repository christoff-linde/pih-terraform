provider "aws" {
  region = var.region
}

resource "aws_iot_thing" "esp32" {
  name = "esp32-thing"
}

resource "aws_iot_certificate" "iot_certificate" {
  active = true
}

resource "aws_iot_thing_principal_attachment" "iot_attachment" {
  principal = aws_iot_certificate.iot_certificate.arn
  thing     = aws_iot_thing.esp32.name
}

