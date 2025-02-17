# Starting a Kubernetes cluster with MicroK8s

This repository contains the necessary files to start a Kubernetes cluster using MicroK8s. Follow the instructions below to get started.

## Prerequisites

* Install MicroK8s on your Ubuntu server. You can download the latest version from the official website: https://microk8s.io/getting-started
    ```bash
    sudo snap install microk8s --classic --channel=1.32
    ```
    ```bash
    sudo usermod -a -G microk8s $USER
    mkdir -p ~/.kube
    chmod 0700 ~/.kube
    ```
* Make sure you have the `microk8s` command line tool installed and start the cluster:
    ```bash
    microk8s start
    microk8s status
    ```
* Verify the nodes and services of the cluster:
    ```bash
    microk8s kubectl get nodes
    ```
    ```bash
    microk8s kubectl get all -A
    ```
    

## Step 1: Clone the repository

* Clone the repository to your local machine:

    ```bash
    git clone https://github.com/arun912-ux/kubernetes.git
    cd kubernetes
    ```

* Install MetalLB from its directory:
    
    Change the address pool in the `addresspool.yml` file to match your network range. These addresses are used to assign IP addresses to the load balancer. 
    ```bash
    bash metallb/install.sh
    ```

* Install Nginx Ingress Controller from its directory:
    ```bash
    bash nginx-ingress-controller/install.sh
    ```
    An IP address will be assigned to the Ingress Controller by MetalLB from the address pool.
    This can be verified by running the following command and checking the External IP address of the Ingress Controller:
    ```bash
    microk8s kubectl get svc -A
    ```




