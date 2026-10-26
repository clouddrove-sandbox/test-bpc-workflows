package main

import rego.v1

required_tags := {"project", "environment", "managedby"}

deny contains msg if {
  some resource in input.resource_changes
  resource.type == "azurerm_resource_group"
  resource.change.actions[_] in {"create", "update"}

  tags := object.get(resource.change.after, "tags", {})
  actual_tags := {lower(key) | some key, _ in tags}
  missing := required_tags - actual_tags
  count(missing) > 0

  msg := sprintf("Resource %s is missing required tags: %v", [resource.address, missing])
}
