variable "project_name" {
  type        = string
  description = "Name of the project"
  default     = "Project ALPHA Resource"
}

variable "default_tags" {
  default = "bash"
}

variable "environment_tags"{
  default = "rrrj"
}

variable "allowed_ports" {
  default = "80,443,8080,3306"
}

variable "instance_type" {
  default = "t2.micro"

  validation {
    condition = length(var.instance_type) >=2 && length(var.instance_type)<=20
    error_message = "instance type must be between 2 and 20 characters"
  }
}