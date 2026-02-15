#!/bin/bash

# Cluster Creation
k3d cluster create val-cloud \
    # -p 80:80@loadbalancer maps machine's port 80 to cluster's load balancer
    -p 80:80@loadbalancer \ 
    -p 443:443@loadbalancer \
    # --k3s-arg disables default Traefik in order to install custom Traefik later (Optional, but recommended for better control)
    --agents 2

# Sending Confirmation Message
echo "Cluster created! Switch context with:"
echo "kubectl cluster-info"