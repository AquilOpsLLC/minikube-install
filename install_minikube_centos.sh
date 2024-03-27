#!/bin/bash

# Install necessary packages
sudo yum install -y conntrack-tools wget

# Download the latest version of Minikube
sudo wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -O /usr/local/bin/minikube

# Make Minikube executable
sudo chmod +x /usr/local/bin/minikube

# Install kubectl, which is a prerequisite for Minikube
sudo yum install -y kubectl

# Start Minikube cluster
sudo minikube start --driver=none

# Optionally, you can specify a specific Kubernetes version by adding the `--kubernetes-version` flag
# sudo minikube start --driver=none --kubernetes-version=v1.22.2

# Verify Minikube installation
minikube version
