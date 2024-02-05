provider "aws" {
  region = var.aws_region
}

resource "aws_iot_thing" "esp32_thing" {
  for_each        = toset(var.esp32_conditions_device_id_list)
  name            = "${var.esp32_conditions_device_group}-${each.value}"
  thing_type_name = aws_iot_thing_type.esp32_conditions_device.name
}

resource "aws_iot_thing_type" "esp32_conditions_device" {
  name = "esp32_conditions_device"
}

resource "aws_iot_certificate" "iot_certificate" {
  active = true
}

resource "aws_iot_thing_principal_attachment" "iot_attachment" {
  principal = aws_iot_certificate.iot_certificate.arn
  thing     = aws_iot_thing.esp32.name
}

