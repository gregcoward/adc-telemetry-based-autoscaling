variable splunkIP {
  type = string
}    

variable splunkHEC {
  type = string
}     

variable logStashIP {
  type = string
}

variable law_id {
  type = string
}         

variable law_primarykey {
  type = string
}  

variable ts_consumer {
  type    = number
}

variable app_name {
  type    = string
  default = "sample_app"
}

variable bigip_min {
  type    = number
  default = 1
}

variable bigip_max {
  type    = number
  default = 4
}

variable workload_min {
  type    = number
  default = 1
}

variable workload_max {
  type    = number
  default = 4
}
variable scale_interval {
  type    = number
  default = 300
}

variable repo_path {
  type        = string
  description = "repo path for github actions"
  default     = ""
}

variable consul_ip {
  type        = string
  description = "private address assigned to consul server"
  default     = "10.2.1.100"
}

variable github_token {
  type        = string
  description = "repo token required to update secrets"
}

variable github_owner {
  type        = string
  description = "repo owner required to update secrets"
}

variable prefix {
  description = "Prefix for resources created by this module"
  type        = string
  default     = "application"
}

variable location {
}

variable cidr {
  description = "Azure VPC CIDR"
  type        = string
  default     = "10.2.0.0/16"
}

variable upassword {default = "F5demonet!"}

variable availabilityZones {
  description = "If you want the VM placed in an Azure Availability Zone, and the Azure region you are deploying to supports it, specify the numbers of the existing Availability Zone you want to use."
  type        = list
  default     = [2]
}

variable AllowedIPs {
  default = ["0.0.0.0/0"]
}

# TAGS
variable "purpose" { default = "public" }
variable "environment" { default = "f5env" } #ex. dev/staging/prod
variable "owner" { default = "f5owner" }
variable "group" { default = "f5group" }
variable "costcenter" { default = "f5costcenter" }
variable "application" { default = "f5app" }
