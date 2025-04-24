variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "cassandradb_namespace" {
  type        = string
  description = "The name of the cassandradb namespace to create"
}

variable "key_vault_id" {
  type        = string
  description = "The resource ID of the key vault"
}

variable "cassandra_password" {
  type      = string
  sensitive = true
  #generate password using openssl rand -base64 32
  description = "The password for the Cassandra"
}

variable "object_id" {
  type        = string
  description = "The object ID of the service principal"
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID of the service principal"
}
