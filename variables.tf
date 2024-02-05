variable "aws_region" {
  description = "AWS target region"
  default     = "eu-west-1"
}

variable "esp32_conditions_device_id_list" {
  type        = list(string)
  description = "The SENSOR_ID value for each esp32 device"
  default     = ["01", "02", "03"]
}

variable "esp32_conditions_device_group" {
  type        = string
  description = "Group for esp32 conditions devices"
  default     = "esp32_conditions_device_group"
}
