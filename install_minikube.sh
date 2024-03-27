#!/bin/bash

# Download the latest version of Minikube
sudo curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && sudo chmod +x minikube \
  && sudo mv minikube /usr/local/bin/

# Install kubectl, which is a prerequisite for Minikube
sudo apt update
sudo apt install -y kubectl

# Start Minikube cluster
minikube start --driver=docker

# Optionally, you can specify a specific Kubernetes version by adding the `--kubernetes-version` flag
# minikube start --driver=docker --kubernetes-version=v1.22.2

# Verify Minikube installation
minikube version
