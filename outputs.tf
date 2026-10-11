output "keymanager_container_v1s_id" {
  description = "Map of id values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no id are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "keymanager_container_v1s_acl" {
  description = "Map of acl values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no acl are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => one(v.acl) if v.acl != null && length(v.acl) > 0 }
}
output "keymanager_container_v1s_consumers" {
  description = "Map of consumers values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no consumers are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.consumers if v.consumers != null && length(v.consumers) > 0 }
}
output "keymanager_container_v1s_container_ref" {
  description = "Map of container_ref values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no container_ref are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.container_ref if v.container_ref != null && length(v.container_ref) > 0 }
}
output "keymanager_container_v1s_created_at" {
  description = "Map of created_at values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no created_at are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "keymanager_container_v1s_creator_id" {
  description = "Map of creator_id values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no creator_id are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.creator_id if v.creator_id != null && length(v.creator_id) > 0 }
}
output "keymanager_container_v1s_name" {
  description = "Map of name values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no name are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "keymanager_container_v1s_region" {
  description = "Map of region values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no region are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "keymanager_container_v1s_secret_refs" {
  description = "Map of secret_refs values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no secret_refs are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.secret_refs if v.secret_refs != null && length(v.secret_refs) > 0 }
}
output "keymanager_container_v1s_status" {
  description = "Map of status values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no status are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.status if v.status != null && length(v.status) > 0 }
}
output "keymanager_container_v1s_type" {
  description = "Map of type values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no type are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.type if v.type != null && length(v.type) > 0 }
}
output "keymanager_container_v1s_updated_at" {
  description = "Map of updated_at values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s except keys with no updated_at are omitted"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

