# 🌩️ Complete Azure Disaster Recovery Automation: From Code to Failover Testing

## 🏗️ Phase 1: Infrastructure-as-Code with Terraform

### **What I Built**
Created complete DR infrastructure including:
- Primary & Secondary Resource Groups (East US / West US)
- Cross-region Virtual Networks & Subnets
- Windows VM with IIS web server
- Azure Site Recovery components:
  - Recovery Services Vault  
  - Site Recovery Fabrics  
  - Protection Containers  
  - Replication Policies  
  - Network Mappings  

### **Key Challenge Solved**
Configured **Managed Identities** and **Role Assignments** to ensure the Recovery Services Vault had the necessary permissions to access Storage Accounts for replication.

## 🚀 Phase 2: CI/CD Pipeline with Azure DevOps

## 🚀 CI/CD Pipeline Stages

### **Stages**
| Stage | Description |
|--------|--------------|
| **tfvalidate** | Runs `terraform init` & `terraform validate` |
| **tfdeploy** | Executes `terraform plan` & `terraform apply` |
| **tfdestroy** | Safely destroys infrastructure (manual trigger) |

## 🔐 Phase 3: Security & Configuration

### **Implemented**
- 🔑 **Managed Identity Authentication** (no service principals)
- 🔒 **Secure variable management** for sensitive data
- 📝 **`.gitignore` best practices** to exclude Terraform state files
- 🧩 **Role-Based Access Control (RBAC)** for Storage Accounts

### **Overcame**
⚙️ Resolved **Storage Account authentication issues** by enabling both **Key-Based** and **Azure AD authentication**, satisfying **Site Recovery requirements**.

---

## 🌍 Phase 4: Site Recovery Configuration

### **Replication Setup**

| Parameter | Value |
|------------|--------|
| **Primary Region** | East US (Production) |
| **DR Region** | West US (Recovery) |
| **Recovery Point Objective (RPO)** | 24-hour retention |
| **Application-Consistent Snapshots** | Every 4 hours |

---

### **Networking**
🌐 Established **Network Mappings** between **Primary** and **Secondary VNets** to ensure **seamless failover connectivity**.

---

## 🧪 Phase 5: Testing & Validation

### **Successfully Executed**
- ✅ **Initial Replication**: Monitored progress from *0% → 100%*  
- 🕒 **Recovery Point Creation**: Verified application-consistent snapshots  
- 🔄 **Test Failover**: Executed non-disruptive DR test  
- 🖥️ **Validation**: Confirmed test VM creation in **West US region**  
- 🧹 **Cleanup**: Properly removed test resources post-validation  

---

### **Proven Capability**
💪 The solution can **successfully fail over workloads** from **East US → West US** during regional outages — with **minimal data loss**.

---

## 📊 Key Metrics Achieved

| Metric | Result |
|---------|--------|
| **RPO** | 15-minute capability |
| **Replication Health** | 100% synchronized |
| **Test Failover Success** | 100% |
| **Automation Level** | Full infrastructure deployment |
| **Recovery Time** | Minutes *(vs traditional hours/days)* |

---

## 🧰 Technology Stack

| Category | Tools Used |
|-----------|------------|
| **Infrastructure** | Terraform (+ Time Provider for dependencies) |
| **CI/CD** | Azure DevOps (YAML Pipelines) |
| **Cloud** | Azure Site Recovery, Compute, Networking, Storage |
| **Security** | Managed Identities, RBAC |
| **Monitoring** | Azure Monitor, Site Recovery Jobs |

---

## 💡 Key Learnings

- 🧾 **Site Recovery** auto-creates cache storage accounts that require specific permissions.  
- ⚙️ **Terraform resource dependencies** are crucial for proper orchestration.  
- 🔁 A **hybrid approach (Azure CLI + Terraform)** provides flexibility for authentication and deployment.  
- 🧪 **Regular DR testing** is essential for maintaining confidence in recovery capabilities.  

---

## 🧠 Conclusion

This project demonstrates how **modern DevOps practices** can transform Disaster Recovery from a **manual, error-prone process** into a **reliable, automated system** — ready when you need it most.  

---


