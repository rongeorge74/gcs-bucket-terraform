
data "google_project" "current" {
  project_id = local.project_id
}

locals {
  default_role_entities = [
    "OWNER:project-owners-${data.google_project.current.number}",
    "WRITER:project-editors-${data.google_project.current.number}",
    "READER:project-viewers-${data.google_project.current.number}",
  ]
  logging_role_entities = [
    "WRITER:group-cloud-storage-analytics@google.com",
  ]
}

resource "google_storage_bucket_acl" "default_bucket" {
  bucket = google_storage_bucket.default.name
  role_entity = concat(local.default_role_entities, var.role_entities)
}

resource "google_storage_bucket_acl" "logging_bucket" {
  bucket = google_storage_bucket.logging.name
  role_entity = concat(local.default_role_entities, local.logging_role_entities)
}
