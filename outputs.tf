output "namespace" {
  value = kubernetes_namespace.mq.metadata[0].name
}

output "mq_secret_name" {
  value = kubernetes_secret.mq_creds.metadata[0].name
}
