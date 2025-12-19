locals {
  formatted_project_name = replace(lower(var.project_name)," ","-")

  port_list = split(",",var.allowed_ports)
}

