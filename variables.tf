// == TOOLS ==

variable "use_docker" {
  type = bool
  default = false
}

variable "use_consul" {
  type = bool
  default = true
}

variable "use_consul_template" {
  type = bool
  default = false
}

variable "use_nomad" {
  type = bool
  default = true
}

variable "use_vault" {
  type = bool
  default = false
}

// == VERSIONS ==

variable "consul_version" {
  type = string
  default = "1.5.3"
}

variable "nomad_version" {
  type = string
  default = "0.9.4"
}

variable "vault_version" {
  type = string
  default = "1.2.1"
}

// == HIGH LEVEL AWS INFO ==

variable "region" {
  type = string
  default = "us-east-1"
}

// == SECURITY ==

variable "vpc_id" {
  type = string
  default = ""
}

// PORTS

variable "serf_port" {
  type = string
  default = "4648"
}

variable "ssh_port" {
  type = string
  default = "22"
}

variable "rpc_port" {
  type = string
  default = "4647"
}

variable "http_port_from" {
  type = string
  default = "4000"
}

variable "http_port_to" {
  type = string
  default = "65535"
}

// CIDR

variable "whitelist_ip" {
  type = string
  default = "0.0.0.0/0"
}

// == ALB ==

variable "base_ami" {
  type = string
  default = "ami-024a64a6685d05041"
  description = "The id of the machine image (AMI) to use for the server. Uses the US East-1 AMI for Ubuntu 18.0.4 LTS AMD 64"
}

variable "key_name" {
  type = string
  default = "nomad"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "desired_servers" {
  type = number
  default = 3
}

variable "max_servers" {
  type = number
  default = 3
}

variable "min_servers" {
  type = number
  default = 1
}

variable "cluster_name" {
  type = string
  default = "duckycorp-hashistack"
}

variable "associate_public_ip_address" {
  type = bool
  default = true
}

// == SERVER DATA ==

variable "retry_join" {
  type = "map"

  default = {
    provider  = "aws"
    tag_key   = "ConsulAutoJoin"
    tag_value = "auto-join-ducky"
  }
}

// == DESCRIPTIONS ==

variable "default_description" {
  type = string
  default = "for duckycorp demo - can remove after HashiConf 2019"
}