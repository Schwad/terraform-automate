########### AWS settings #########################

variable "aws_creds_file" {
  description = "The path to an aws credentials file"
  type        = string
}

variable "aws_profile" {
  description = "The name of an aws profile to use"
  type        = string
  default     = "default"
}

variable "aws_region" {
  description = "The aws region to use"
  type        = string
  default     = "eu-west-1"
}

variable "automate_create" {
  description = "A boolean to dictate if we create an instance of chef automate"
  type        = bool
  default     = false
}

variable "bastion_create" {
  description = "A boolean to dictate if we create an instance of automate cluster bastion node"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A set of tags to assign to the instances created by this module"
  type        = map(string)
  default     = {}
}

########### automate vm settings #################

variable "automate_cidrs" {
  description = "A list of CIDR's to use for allowing access to the automate vm"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "automate_key_name" {
  description = "The name of an aws key pair to use for chef automate"
  type        = string
}

variable "automate_instance_type" {
  description = "The name of the instance type to use for chef automate"
  type        = string
  default     = "t3.large"
}

############ automate install settings ###########

variable "automate_ssh_user_private_key" {
  description = "The ssh private key used to access the automate vm"
  type        = string
}

variable "automate_products" {
  description = "A list of automate products to install"
  type        = list(string)
  default     = ["automate"]
}

variable "automate_config" {
  description = "A string of config options to pass to chef automate"
  type        = string
  default     = ""
}

variable "automate_ingest_token" {
  description = "The string to use as the automate admin token"
  type        = string
  default     = "automateingesttoken1234"
}

variable "automate_admin_password" {
  description = "The admin password to set for chef automate"
  type        = string
  default     = "automateadminpassword"
}

variable "automate_license" {
  description = "The license to set for chef automate"
  type        = string
  default     = ""
}

variable "automate_hostname_method" {
  description = "The method to use for setting the hostname."
  type        = string
  default     = "cloud"
}

variable "automate_os_name" {
  description = "The name of the operating system to use"
  type        = string
  default     = "centos-7"
}

########### automate populate settings ##########

variable "automate_enabled_profiles" {
  description = "A list of profiles to enable from the automate profile market place"
  type        = list(map(string))
  default     = []
}
