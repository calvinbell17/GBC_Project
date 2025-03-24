# WordPress on AWS EKS with RDS
This repository contains files to deploy a simple WordPress web app using AWS EKS, RDS, and GitHub Actions for CI/CD.

## How to Use
1. Update `wp-config.php` and `k8s` files with your database and ECR details.
2. Build and push the Docker image to ECR:
   ```sh
   docker build -t your_ecr_repository:latest .
   aws ecr get-login-password --region your-region | docker login --username AWS --password-stdin your_ecr_repository
   docker push your_ecr_repository:latest
   ```
3. Deploy to EKS:
   ```sh
   kubectl apply -f k8s/
   ```
4. Set up GitHub Actions for CI/CD.
5. Login to WordPress Admin and set the "Hello World" template as the homepage.