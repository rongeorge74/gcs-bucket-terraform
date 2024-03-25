
variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects."
  default     = "false"
}

variable "lifecycle_rules" {
  default = []
  type    = list(string)
}

variable "name" {
  description = "The name of the bucket"
}

variable "project_id" {
  description = "The ID of the google project to which the resource belongs. If it is not provided, the provider project is used."
  default     = ""
}

variable "region" {
  description = "The GCS region. If it is not provided, the provider region is used."
  default     = ""
}

variable "role_entities" {
  default = []
  type    = list(string)
}

variable "storage_class" {
  description = "The Storage Class of the new bucket. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE."
  default     = "REGIONAL"
}

variable "versioning" {
  description = "Version bucket objects?"
  default     = false
}

variable "website_config" {
  default = []
  type    = list(string)
}

