variable "region" {
    type = string
    default = "us-east-1"
}

variable "VPCID" {
    type = string
    default = "" 
}

#RHEL8

variable "AMI_ID" {
    type = string
    default = "ami-0b0af3577fe5e3532"
}
