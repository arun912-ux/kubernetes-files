#! /bin/bash

# helm install metallb
helm upgrade --install metallb oci://registry-1.docker.io/bitnamicharts/metallb --namespace metallb --create-namespace

microk8s kubectl apply -f metallb/addressPool.yml
microk8s kubectl apply -f metallb/l2Advertise.yml


