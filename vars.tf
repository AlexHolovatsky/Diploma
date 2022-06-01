variable aws_reg {
  description = "This is aws region"
  default     = "eu-west-2"
  type        = string
}

variable stack {
  description = "this is name for tags"
  default     = "terraform"
}

variable vpc {
  description = "this is vpc"
  default = "vpc-0029ed20e06801ef6"
}

variable vpc-cidr {
  description = "this is vpc-cidr"
  default = ["10.0.0.0/16"]
}

variable public-subnet_id-1 {
  description = "subnet-id"
  default = "subnet-0ed3d5b598d340ffb"
}