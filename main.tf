provider "kubernetes" {
  config_path = var.kubeconfig_path
}

resource "kubernetes_namespace" "mq" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_secret" "mq_creds" {
  metadata {
    name      = "mq-secret"
    namespace = kubernetes_namespace.mq.metadata[0].name
  }

  data = {
    appPassword = base64encode(var.mq_password)
  }

  type = "Opaque"
}

# Create MQ QueueManager CR from external YAML
resource "kubernetes_manifest" "mq_qmgr" {
  manifest = yamldecode(file("${path.module}/mq-qmgr.yaml"))
}
