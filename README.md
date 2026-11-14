<div align="center">

# ⚡ NEELAKSHEE GHIDODE
### `Junior DevOps & Cloud Infrastructure Engineer`

[![Live Deployment](https://img.shields.io/badge/Live_Demo-Render_Cloud-00f2fe?style=for-the-badge&logo=render&logoColor=white)](https://neelakshee-devops-portfolio.onrender.com)
[![Docker](https://img.shields.io/badge/Docker-Containerized-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com)
[![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub_Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)](https://github.com/neelakshighidode/Portfolio/actions)
[![License](https://img.shields.io/badge/License-MIT-ff0055?style=for-the-badge)](LICENSE)

<p align="center">
  <strong>Automating Infrastructure • Engineering Scale • Continuous Delivery</strong>
</p>

---

</div>

## 📌 Overview

This repository contains the source code, containerization manifests, and automated CI/CD deployment pipelines for my personal **DevOps & Cloud Engineering Portfolio**. 

Rather than serving as a static showcase, this portfolio is built and maintained as a **production-grade DevOps implementation**—encapsulated within a lightweight Alpine Nginx container, automated via GitHub Actions, and deployed on cloud infrastructure with zero downtime.

---

## 🛠️ Core Technology Matrix

<div align="center">

| Domain | Technologies & Tools |
| :--- | :--- |
| **Operating Systems & Scripting** | ![Linux](https://img.shields.io/badge/Linux_Ubuntu-E95420?style=flat-square&logo=ubuntu&logoColor=white) ![Bash](https://img.shields.io/badge/Bash_Scripting-4EAA25?style=flat-square&logo=gnubash&logoColor=white) ![WSL](https://img.shields.io/badge/WSL_2-0078D6?style=flat-square&logo=windows-terminal&logoColor=white) |
| **Containers & Orchestration** | ![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white) ![Docker Compose](https://img.shields.io/badge/Docker_Compose-1572B6?style=flat-square&logo=docker&logoColor=white) ![Nginx](https://img.shields.io/badge/Nginx_Alpine-009639?style=flat-square&logo=nginx&logoColor=white) |
| **CI/CD & Version Control** | ![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white) |
| **Cloud Computing** | ![AWS](https://img.shields.io/badge/AWS_Cloud-232F3E?style=flat-square&logo=amazonwebservices&logoColor=white) ![Render](https://img.shields.io/badge/Render_Hosting-46E3B7?style=flat-square&logo=render&logoColor=black) |
| **Web Engineering** | ![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/CSS3_Cyberpunk-1572B6?style=flat-square&logo=css3&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript_ES6+-F7DF1E?style=flat-square&logo=javascript&logoColor=black) |

</div>

---

## 🏗️ DevOps Architecture & CI/CD Pipeline Flow

```mermaid
flowchart LR
    A[💻 Local Code / git.sh] -->|Git Push| B[🐙 GitHub Repository]
    B -->|Trigger Workflow| C[⚡ GitHub Actions CI/CD]
    subgraph CI Pipeline
        C --> D[🧪 Lint & Validate]
        D --> E[🐳 Build Docker Image]
    end
    E -->|Automated Trigger| F[🚀 Render Cloud Deploy]
    F -->|Zero Downtime| G[🌐 Live Production Website]
```

### 🔁 Automated Deployment Lifecycle:
1. **Developer Push:** Code changes are verified and committed using custom automated shell script (`./git.sh`).
2. **CI Pipeline Validation:** GitHub Actions triggers on every push to `main`, validating syntax and building the Docker container image.
3. **Container Delivery:** The production-optimized Nginx image is built and deployed directly to the cloud platform with live status verification.

---

## 📂 Repository Architecture

```bash
Portfolio/
├── .github/
│   └── workflows/
│       └── deploy.yml        # CI/CD GitHub Actions Pipeline
├── .dockerignore              # Files excluded from Docker context
├── Dockerfile                 # Multi-stage production Nginx Alpine image
├── docker-compose.yml         # Local container orchestration manifest
├── nginx.conf                 # Production Nginx reverse-proxy & cache config
├── git.sh                     # Automated Git staging, commit & push utility
├── index.html                 # Homepage (Hero, Terminal Matrix, Stack)
├── projects.html              # Proof of Work & DevOps project showcases
├── education.html             # Academic background & MCA timeline
├── certificates.html          # Verified cloud and container certifications
├── platforms.html             # Developer profiles & communication endpoints
├── style.css                  # Cyberpunk dark aesthetic & responsive engine
└── README.md                  # Comprehensive repository documentation
```

---

## 🚀 Quickstart: Local Container Run

Run the entire application locally using Docker in under 10 seconds:

### Prerequisites
* Docker installed and running on your system.
* (Optional) Docker Compose.

### Option 1: Using Docker Compose (Recommended)
```bash
# Clone the repository
git clone https://github.com/neelakshighidode/Portfolio.git
cd Portfolio

# Spin up the container
docker compose up -d

# Visit in your browser:
# http://localhost:8080
```

### Option 2: Using Standard Docker CLI
```bash
# Build the Docker image
docker build -t devops-portfolio:latest .

# Run the container
docker run -d -p 8080:80 --name portfolio-app devops-portfolio:latest
```

---

## ⚙️ Automated Push Script (`git.sh`)

This project includes a custom shell utility that automates safe staging, dynamic commit messages, and automated status handling:

```bash
# Make executable (Linux/WSL/Git Bash)
chmod +x git.sh

# Run the auto-push utility
./git.sh
```

---

## 📬 Connect & Collaborate

<div align="center">

[![GitHub](https://img.shields.io/badge/GitHub-neelakshighidode-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/neelakshighidode)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/neelakshee-ghidode-a85009407/)
[![Docker Hub](https://img.shields.io/badge/Docker_Hub-Repositories-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com)
[![Email](https://img.shields.io/badge/Email-Contact_Direct-EA4335?style=for-the-badge&logo=gmail&logoColor=white)](mailto:neelakshighidode24@gmail.com)

<br>

<sub>Designed & Engineered with ❤️ by <strong>Neelakshee Ghidode</strong>. Powered by modern DevOps workflows.</sub>

</div>
