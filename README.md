# Node App (URL Shortener) Containerization and ECR Deployment

This repository demonstrates how to containerize a Node.js application and automatically deploy it to Amazon Elastic Container Registry (ECR) using GitHub Actions.

## Overview

This project showcases a complete CI/CD pipeline that:
- Containerizes an application using Docker
- Builds and tags Docker images with a consistent naming convention
- Automatically deploys images to Amazon ECR on code changes

<!-- ## Project Structure

```
├── src/                # Application source code
├── Dockerfile          # Container definition
├── .github/
│   └── workflows/
│       └── ecr-deploy.yml  # GitHub Actions workflow
└── README.md           # Project documentation
``` -->

## Dockerfile

The Dockerfile in this repository is configured to build a lightweight, production-ready container image for the application.

## GitHub Actions Workflow

The automated workflow triggers on every push to the repository and:
1. Sets up the necessary AWS credentials and authentication
2. Builds the Docker image from the application code
3. Tags the image using the format: `johnkponyo_url-shortener`
4. Pushes the tagged image to Amazon ECR

## Getting Started

### Prerequisites

- AWS Account with ECR access
- GitHub repository secrets set up with AWS credentials:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
  - `AWS_REGION`

### Deployment

Simply push changes to the repository, and the GitHub Actions workflow will automatically:
- Build a new container image
- Push it to the ECR repository

## Link

- [Amazon ECR Repository](https://gallery.ecr.aws/xyz123/johnkponyo_url-shortener)

## License

---