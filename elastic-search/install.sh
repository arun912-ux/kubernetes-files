
microk8s helm upgrade --install elastic-search oci://registry-1.docker.io/bitnamicharts/elasticsearch \
    --namespace elastic-search --create-namespace \
    --values elastic-search/values.yml
