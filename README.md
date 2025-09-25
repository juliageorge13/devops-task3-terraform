# DevOps Task 3 - Terraform IaC

## Objective
Provision a local Docker container using **Terraform**.

## Tools Used
- Terraform
- Docker

## Steps Taken
1. Initialized Terraform: `terraform init`
2. Checked execution plan: `terraform plan`
3. Applied Terraform config: `terraform apply`
4. Verified container creation: `docker ps`
5. Checked Terraform state: `terraform state list`
6. Destroyed infrastructure after testing: `terraform destroy`

## Terraform Configuration
- **Provider:** Docker
- **Resources:**
  - `docker_image`: Pulls Nginx image
  - `docker_container`: Runs container with port mapping 8080 → 80

## Outcomes
- Learned provisioning using Infrastructure as Code (IaC)
- Practiced Terraform workflow: init → plan → apply → state → destroy

## Logs
- Execution logs stored in `/logs` folder

## Author
Julia George
