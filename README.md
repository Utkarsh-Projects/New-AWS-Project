# Node.js App on AWS with Terraform & GitHub Actions

## 🚀 Stack
- Node.js REST API (Express.js)
- Docker (multi-stage build)
- Terraform (AWS EC2 + Security Groups)
- GitHub Actions (CI/CD pipeline)
- DockerHub (container registry)

## 🔧 Steps
1. Clone repo & deploy infra:
   ```sh
   cd terraform
   terraform init
   terraform apply -auto-approve
   ```
2. Configure GitHub Secrets for CI/CD.
3. Push to `main` branch → GitHub Actions builds & deploys.
4. Access app at: `http://<EC2_PUBLIC_IP>:3000`
