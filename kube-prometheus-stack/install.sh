# helm install kube-prometheus-stack
helm upgrade --install kube-prometheus-stack prometheus-community/kube-prometheus-stack -n monitoring --create-namespace \
    --values kube-prometheus-stack/values.yml
