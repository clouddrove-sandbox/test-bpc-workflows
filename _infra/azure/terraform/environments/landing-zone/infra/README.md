# Landing-zone workflow test root

This minimal root creates one tagged resource group to exercise the landing-zone
workflow. It uses the shared Azure backend and its own state key:
`workflow-test-landing-zone.tfstate`.

The backend must already exist. The GitHub plan identity needs Azure Blob data
access to the container and read access to the target subscription. The apply
identity needs permission to create and manage the resource group.

The reusable workflow supplies the required `TF_VAR_*` inputs. For a local
plan, authenticate using Azure `ARM_*` environment variables, then run:

```sh
terraform init -lockfile=readonly
terraform plan
```

Applying the plan creates the resource group named by `resource_group_name` in
the landing-zone subscription.
