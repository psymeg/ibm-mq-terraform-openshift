# IBM MQ on OpenShift with Terraform

This Terraform project deploys an IBM MQ QueueManager on OpenShift using the IBM MQ Operator.

## Prerequisites

- OpenShift cluster (with access to kubeconfig)
- IBM MQ Operator installed in OpenShift
- Terraform 1.0+
- `kubectl` or `oc` CLI

## Usage

```bash
terraform init
terraform plan
terraform apply
