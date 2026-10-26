package main

import rego.v1

denies(plan) := {message |
  some message in deny with input as plan
}

test_resource_group_with_required_tags_passes if {
  count(denies({"resource_changes": [{
    "address": "azurerm_resource_group.test",
    "type": "azurerm_resource_group",
    "change": {
      "actions": ["create"],
      "after": {"tags": {
        "Project": "workflow-test",
        "Environment": "dev",
        "ManagedBy": "terraform",
      }},
    },
  }]})) == 0
}

test_resource_group_missing_tag_is_denied if {
  count(denies({"resource_changes": [{
    "address": "azurerm_resource_group.test",
    "type": "azurerm_resource_group",
    "change": {
      "actions": ["create"],
      "after": {"tags": {"Project": "workflow-test", "Environment": "dev"}},
    },
  }]})) == 1
}
