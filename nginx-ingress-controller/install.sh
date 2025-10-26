# helm install nginx-ingress
microk8s helm upgrade --install nginx-ingress oci://registry-1.docker.io/bitnamicharts/nginx-ingress-controller \
    --namespace nginx-ingress --create-namespace \
    --values nginx-ingress-controller/values.yml \
    --set ingressClassResource.default=true --set metrics.enabled=true
