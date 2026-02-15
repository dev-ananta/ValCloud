# ValCloud

Personal Distributed Kubernetes Cloud. 

---

## Project Specifications

### Repository Structure

```
ValCloud/
├── create_cluster.sh - Cluster Creation.
├── app-deployment.yaml - PersistentVolumeClaim, Deployment, Service, & Ingress Details.
├── argocd-core.yaml - Built-in GitOps & CI/CD and Zero-Touch Operations
├── monitoring-quickstart.yaml - Metrics Server Deployment Resources.
├── monitoring-stack.yaml - Integrated Monitoring.
├── LICENSE - Licensing Information of ValCloud.
└── README.md - Implementation Instruction & Specification Pertaining to ValCloud.
```

### File Purposes

- `create_cluster.sh`: Shell Script for Kubernetes Cluster Creation.
- `app-deployment.yaml`: Kubernetes PersistentVolumeClaim, Deployment, Service, and Ingress for whoami Application.
- `argocd-core.yaml`: Implements Built-in GitOps & CI/CD and Zero-Touch Operations for Kubernetes
- `monitoring-quickstart.yaml`: Resources for Metrics Server Deployment the Kubernetes Cluster
- `monitoring-stack.yaml`: Deploys Prometheus (Database) & Grafana (Dashboard) for Kubernetes Cluster Monitoring

## Implementation Guide

### Prerequisites

- **Terminal**: Ensure you have some terminal accessible. VS Code's in-built Terminal should be sufficient.
- **Code Editor**: VS Code (Preferably), Sublime Text, or even Notepad.
- **Browser**: Needed for Testing/Utilization. (Chromium-based or Zen Recommended)

### Install
1. Copy the Repository to Documents or Desktop.
2. Run the Shell Script in Terminal:
```bash
chmod +x create_cluster.sh
./create_cluster.sh
```
3. Install GitOps (ArgoCD):
```bash
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
- Use `kubectl get pods -n argocd --watch` to watch the pods start.
4. Install Monitoring
```bash
kubectl create namespace monitoring
kubectl apply -f monitoring-stack.yaml
```
5. Deploy Application
```bash
kubectl apply -f app-deployment.yaml
```
6. Verify Logic
```bash
kubectl get pods -o wide # NODE column should prefer k3d-val-cloud-agent-1
```

## Testing/Utilization Instructions

1. **Open Browser**: Any Browser should be compatible; however I'd recommend either Zen or a Chromium-based Browser. 
2. **Open Server URL**: Go to [http://whoami.localhost](http://whoami.localhost).
3. **Verify**:
- You should see **container's ID & IP Address**: Refresh the Page & Notice IP Changes.
- If **IP Address Changes**: Load Balancer is distrubuting traffic between the 2 replicas properly.

## Educational Note

How this **works**:
- **Deployment**: Ensure App Remains Alive Even if 1 Replica Crashes; Kubernetes Notices & Instantly Begins New 1 to Replace.
- **Service**: Internal Phone Number. Gives App Stable Internal IP Address for Other Parts of ValCloud to Locate it, even if Specific Containers Change.
- **Ingress**: Acts as a Receptionists. Sits at the Edge of ValCloud, Checks Website Address the User Asks for (e.g. `whoami.localhost`), & Points to the Correct Service.

## Project Details

**Domain**: Software & DevOps
**Uniqueness**: High

## Roadmap

- **Commit 1**: Create Repository Structure, Write `create_cluster.sh`, & Update `README.md`.
- **Commit 2**: Write `app-deployment.yaml`.
- **Commit 3**: Write `monitoring-quickstart.yaml`.
- **Commit 4**: Update `README.md`.
- **Commit 5**: Testing Stage.
- **Commit 6**: Define Locations for Edge-Native Architecture in `create_cluster.sh`.
- **Commit 7**: Write `argocd-core.yaml`.
- **Commit 8**: Write `monitoring-stack.yaml`.
- **Commit 9**: Update `app-deployment.yaml` in order to add Persistent Storage, Location-Aware Scheduling, & Resource Limits.
- **Commit 10**: Update README.md
- **Commit 11**: Test & Debug.
- **Commit 12**: Request Feedback.
- **Commit 13**: Improve & Finalize for MVP Publishing.

#### Signed by Ananta the Developer