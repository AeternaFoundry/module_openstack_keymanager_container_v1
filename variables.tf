variable "keymanager_container_v1s" {
  description = <<EOT
Map of keymanager_container_v1s, attributes below
Required:
    - type
Optional:
    - name
    - region
    - acl (block):
        - read (optional, block):
            - project_access (optional)
            - users (optional)
    - secret_refs (block):
        - name (optional)
        - secret_ref (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    type   = string
    name   = optional(string)
    region = optional(string)
    acl = optional(object({
      read = optional(object({
        project_access = optional(bool)
        users          = optional(set(string))
      }))
    }))
    secret_refs = optional(list(object({
      name       = optional(string)
      secret_ref = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.keymanager_container_v1s : (
        contains(["generic", "rsa", "certificate"], v.type)
      )
    ])
    error_message = "must be one of: \"generic\", \"rsa\", \"certificate\""
  }
}

