#### project ####
variable "project_name" {
    type = string
}

variable "environment" {
    type = string
    default = "dev"
}

variable "common_tags" {
    type = map
}

#### vpc ####
variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "vpc_tags" {
    type = map
    default = {}
}


#### Internet Gate Way ####

variable "igw_tags" {
    type = map
    default = {}
}


#### public subnet ####

variable "public_subnet_cidrs" {
    type = list
    validation {
            condition = length(var.public_subnet_cidrs) == 2
            error_message = "Public subnet wants give 2 CIDR "
    }
}

variable "public_cidr_tags" {
    type = map
    default = {}
}

#### private subnet ####

variable "private_subnet_cidrs" {
    type = list
    validation {
            condition = length(var.private_subnet_cidrs) == 2
            error_message = "Priavte subnet wants give 2 CIDR "
    }
}

variable "private_cidr_tags" {
    type = map
    default = {}
}


#### database subnet ####

variable "database_subnet_cidrs" {
    type = list
    validation {
            condition = length(var.database_subnet_cidrs) == 2
            error_message = "database subnet wants give 2 CIDR "
    }
}

variable "database_cidr_tags" {
    type = map
    default = {}
}


### natgateway ####

variable "nat_cidr_tags" {
    type = map
    default = {}
}

### public route tables ###

variable "public_route_table_tags" {
    type = map
    default = {}
}

### private route tables ###

variable "private_route_table_tags" {
    type = map
    default = {}
}

### database route tables ###

variable "database_route_table_tags" {
    type = map
    default = {}
}

#### peering ###

variable "is_peering_required" {
    type = bool
    default = true
}

variable "acceptor_vpc_id" {
    type = string
    default = ""
}

variable "vpc_peering_tags" {
    type = map
    default = {}  
}