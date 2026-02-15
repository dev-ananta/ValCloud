# ValCloud

Personal Distributed Kubernetes Cloud. I developed this to learn about DevOps, Infrastructure, Docker, Reverse Proxy, Self-hosted Services, & Monitoring Stack. I found developing this a really great experience. I practice theory on paper then create it for practical application of learning. This is a Single-Sitter Project of mines to further advance my educational prowess pertaining to Computer Science and Software Development.

---

## Project Specifications

### Repository Structure

```
ValCloud/
├── create_cluster.sh - Cluster Creation.
├── app-deployment.yaml - Deployment, Service, & Ingress Details.
├── monitoring-quickstart.yaml - Metrics Server Deployment Resources.
├── LICENSE - Licensing Information of ValCloud.
└── README.md - Implementation Instruction & Specification Pertaining to ValCloud.
```

### File Purposes

- `create_cluster.sh`: Shell Script for Kubernetes Cluster Creation.
- `app-deployment.yaml`: Kubernetes Deployment, Service, and Ingress for whoami Application.
- `monitoring-quickstart.yaml`: Resources for Metrics Server Deployment the Kubernetes Cluster

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
3. Verify Core Connection:
```bash
kubectl get nodes # Check if "nodes" are running.
```
4. Application Deployment:
```bash
kubectl apply -f app-deployment.yaml # Apply Application File to Cluster
```
5. Install Monitoring:
```bash
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
# Apply Official Metrics Server Configuration
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
- **Commit 5**: Test & Debug.
- **Commit 6**: Request Feedback.
- **Commit 7**: Improve & Finalize for MVP Publishing.

#### Signed by Ananta the Developer
