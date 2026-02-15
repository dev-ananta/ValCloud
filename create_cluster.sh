#!/bin/bash

# Ensure Cluster is Deleted Before Creation if it Already Exists
k3d cluster delete val-cloud

# Cluster Creation
k3d cluster create val-cloud \
    # -p 80:80@loadbalancer maps machine's port 80 to cluster's load balancer
    -p 80:80@loadbalancer \ 
    -p 443:443@loadbalancer \
    -p "8080:80@server:0" \
    --agents 2 \
    --k3s-arg "--disable=traefik@server:0" \
    # Adding Node Labels to Identify Home and Edge Nodes (Agent 0 is Home & Agent 1 is Edge)
    --k3s-node-label "topology.kubernotes.io/zone=home@agent:0" \
    --k3s-node-label "topology.kubernotes.io/zone=edge@agent:1"

# Sending Confirmation Message
echo "Distributed Cluster Created."
echo "Agent 0 is 'Home', Agent 1 is 'Edge'."