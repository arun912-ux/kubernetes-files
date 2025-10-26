#! /bin/bash

# helm install metallb
microk8s helm upgrade --install metallb oci://registry-1.docker.io/bitnamicharts/metallb --namespace metallb --create-namespace --values metallb/values.yml

microk8s kubectl apply -f metallb/addresspool.yml
microk8s kubectl apply -f metallb/l2Advertise.yml


