# IBM MQ on OpenShift with Terraform

This Terraform project deploys an IBM MQ QueueManager on OpenShift using the IBM MQ Operator.

Some code chatgpt generated. This is a self development project and may not be secure to run in production. YMMV!

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
