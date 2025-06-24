variable "kubeconfig_path" {
  description = "Path to your kubeconfig"
  type        = string
  default     = "~/.kube/remote-cluster.conf"
}

variable "namespace" {
  description = "Namespace for MQ"
  type        = string
  default     = "mq-project"
}

variable "mq_password" {
  description = "MQ app password"
  type        = string
  sensitive   = true
}
