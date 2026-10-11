resource "openstack_keymanager_container_v1" "keymanager_container_v1s" {
  for_each = var.keymanager_container_v1s

  type   = each.value.type
  name   = each.value.name
  region = each.value.region

  dynamic "acl" {
    for_each = each.value.acl != null ? [each.value.acl] : []
    content {
      dynamic "read" {
        for_each = acl.value.read != null ? [acl.value.read] : []
        content {
          project_access = read.value.project_access
          users          = read.value.users
        }
      }
    }
  }

  dynamic "secret_refs" {
    for_each = each.value.secret_refs != null ? each.value.secret_refs : []
    content {
      name       = secret_refs.value.name
      secret_ref = secret_refs.value.secret_ref
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

