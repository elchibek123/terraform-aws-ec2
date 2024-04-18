########## AWS EC2 Instance ##########

variable "ami_id" {
  type        = string
  description = "This represents ami id"
  default     = ""
}

variable "instance_type" {
  type        = string
  description = "This represents instance type"
  default     = ""
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "This represents security of VPS id"
  default     = []
}

variable "subnet_id" {
  type        = string
  description = "This represents subnet id"
  default     = ""
}

variable "key_name" {
  type        = string
  description = "This reperesents key name"
  default     = ""
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance in a VPC"
  type        = bool
  default     = null
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile to launch the instance with"
  type        = string
  default     = ""
}

variable "user_data" {
  description = "The user data to provide when launching the instance"
  type        = string
  default     = ""
}

variable "delete_on_termination" {
  type        = bool
  description = "Whether delete volume on instance termination or not"
  default     = true
}

variable "volume_size" {
  type        = string
  description = "This is volume size"
  default     = ""
}

variable "volume_type" {
  type        = string
  description = "This is volume type"
  default     = "gp2"
}

variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
  default     = []
}

variable "create_ec2_instance" {
  description = "Set to true if the EC2 Instance should be created, false otherwise"
  type        = bool
  default     = true
}

########## Tags ##########

variable "tags" {
  type        = map(string)
  description = "These are resource tags"
  default     = {}
}

variable "instance_name" {
  description = "Name to be used on EC2 instance created"
  type        = string
  default     = ""
}

variable "volume_name" {
  description = "Name to be used on Volume created"
  type        = string
  default     = ""
}