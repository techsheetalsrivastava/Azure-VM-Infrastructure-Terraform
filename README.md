🚀 Azure VM Deployment using Terraform (Parent-Child Modules & for_each)

📄 Project Overview

This project demonstrates a modular approach to deploying an Azure Virtual Machine (VM) along with all its dependencies using Terraform.
It uses parent-child modules and the for_each construct to manage multiple resources efficiently.
All configurations are hardcoded in the parent module's terraform.tfvars, while child modules handle individual resource creation.

🛠️ Resources Deployed

Resource Group (RG) 🗂️

Virtual Network (VNet) 🌐

Subnet 🔗

Network Security Group (NSG) 🔒

Network Interface (NIC) 💻

Public IP 🌍

Azure Key Vault (with secrets) 🔑

SQL Server & Database 🗄️

Virtual Machine (VM) 🖥️

🏗️ Architecture Diagram


          ┌───────────────────┐
          │   Parent Module   │
          │------------------│
          │terraform.tfvars   │
          │variables.tf       │
          │main.tf            │
          └────────┬──────────┘
                   │
          ┌────────┴──────────┐
          │   Child Modules   │
          │------------------│
          │ Resource Group    │ 🗂️
          │ VNet              │ 🌐
          │ Subnet            │ 🔗
          │ NSG               │ 🔒
          │ NIC               │ 💻
          │ Public IP         │ 🌍
          │ Key Vault         │ 🔑
          │ SQL Server        │ 🗄️
          │ SQL Database      │ 🗄️
          │ Virtual Machine   │ 🖥️
          └───────────────────┘

📁 Project Structure

Module Type	Module Name	Description
Parent Module	parent-module	Coordinates deployment & passes variables
Child Module	resource-group	Creates Azure Resource Group
Child Module	vnet	Creates Virtual Network
Child Module	subnet	Creates Subnet inside VNet
Child Module	nsg	Creates Network Security Group & rules
Child Module	nic	Creates Network Interface
Child Module	public-ip	Creates Public IP for VM
Child Module	keyvault	Creates Key Vault & stores secrets
Child Module	sql-server	Creates SQL Server
Child Module	sql-database	Creates SQL Database
Child Module	virtual-machine	Creates VM with NIC, Public IP & NSG

💡 Key Concepts Implemented

1️⃣ Parent-Child Module Architecture

Parent module manages variable passing and orchestration.

Child modules handle creation of individual resources for modularity & reusability.

2️⃣ for_each Usage

Dynamically deploy multiple resources (e.g., NSG rules, VM extensions, Key Vault secrets).

3️⃣ Secrets Management

Azure Key Vault stores SQL credentials securely.

No sensitive data is hardcoded in Terraform scripts. 🔒

4️⃣ Dependency Management

depends_on ensures proper creation order (e.g., VM depends on NIC → Subnet & NSG).

5️⃣ Clean Architecture

Each resource in its own module.

Easy to scale or modify without affecting other modules.

⚡ How to Use

Clone the repository:

git clone <your-repo-url>
cd azure-vm-terraform


Initialize Terraform:

terraform init


Apply the configuration:

terraform apply


Destroy resources when done:

terraform destroy

✅ Outcome

After applying this configuration, you get:

Fully functional VM with attached NIC, Public IP, and NSG 🖥️

SQL Server & Database with credentials stored securely in Key Vault 🔑

Modular infrastructure ready for scaling and reuse 🚀

✍️ Author

Sheetal Srivastava – Terraform & Azure enthusiast | DevOps practitioner 🌟
