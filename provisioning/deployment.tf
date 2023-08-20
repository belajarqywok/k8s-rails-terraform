resource "kubernetes_deployment" "provider" {

    metadata {
        name = "restful"
    }

    spec {

        selector {
            match_labels = {
                "app" = "restful"
            }
        }

        replicas = 1

        template {

            metadata {
                labels = {
                    "app" = "restful"
                }
            }

            spec {
                container {
                    name = "restful"
                    image = "qywok/testing:1.0"
                    port {
                        container_port = 3001
                    }
                }
            }

        }

    }

}










