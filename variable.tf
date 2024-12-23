variable "ami_id" {
  description = "AMI ID for the instance"
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the instance"
}
