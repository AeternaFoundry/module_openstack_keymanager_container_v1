output "keymanager_container_v1s_id" {
  description = "Map of id values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.id }
}
output "keymanager_container_v1s_acl" {
  description = "Map of acl values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => one(v.acl) }
}
output "keymanager_container_v1s_consumers" {
  description = "Map of consumers values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.consumers }
}
output "keymanager_container_v1s_container_ref" {
  description = "Map of container_ref values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.container_ref }
}
output "keymanager_container_v1s_created_at" {
  description = "Map of created_at values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.created_at }
}
output "keymanager_container_v1s_creator_id" {
  description = "Map of creator_id values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.creator_id }
}
output "keymanager_container_v1s_name" {
  description = "Map of name values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.name }
}
output "keymanager_container_v1s_region" {
  description = "Map of region values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.region }
}
output "keymanager_container_v1s_secret_refs" {
  description = "Map of secret_refs values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.secret_refs }
}
output "keymanager_container_v1s_status" {
  description = "Map of status values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.status }
}
output "keymanager_container_v1s_type" {
  description = "Map of type values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.type }
}
output "keymanager_container_v1s_updated_at" {
  description = "Map of updated_at values across all keymanager_container_v1s, keyed the same as var.keymanager_container_v1s"
  value       = { for k, v in openstack_keymanager_container_v1.keymanager_container_v1s : k => v.updated_at }
}

