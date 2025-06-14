# 🛠️ Omnixys Cloud

Dieses Repository dient als zentrale Cloud- und Infrastrukturplattform für **OmnixysSphere**. Es bündelt alle Kubernetes-Ressourcen, CI/CD-Workflows, Observability-Konfigurationen und Setup-Vorlagen für alle Omnixys-Microservices.

---

## 📦 Inhalt

| Pfad                           | Beschreibung                                                   |
|--------------------------------|----------------------------------------------------------------|
| `.github/ISSUE_TEMPLATE/`      | Standardisierte Vorlagen für Cloud-Setup, Bugs, Features etc. |
| `.github/workflows/`           | GitHub Actions für automatisierte Deployments                 |
| `k8s/<service>/`               | Kubernetes YAMLs pro Service (Deployment, Service, Ingress)    |
| `tools/`                       | Hilfsskripte zur Automatisierung                              |
| `README.md`                    | Diese Dokumentation                                           |

---

## 🚀 Ziel

Dieses Repository dient als **Cloud-zentrales Steuerzentrum** für:

- Bereitstellung von Microservices in Kubernetes (lokal & Cloud)
- Infrastruktur als Code (IaC) für OmnixysSphere
- GitHub Actions CI/CD Pipelines
- Monitoring, Logging und Tracing (Prometheus, Loki, Tempo)
- Service-Onboarding und Bereitstellungs-Checklisten

---

## 🧱 Kubernetes-Verzeichnisstruktur

```bash
k8s/
├── person-service/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── ingress.yaml (optional)
├── ... (weitere Services)
└── namespace.yaml
```

---

## 📋 Issue-Vorlagen & Projektstruktur

Verwende die bereitgestellten [Issue Templates](./.github/ISSUE_TEMPLATE) für:

- Neues Service-Setup in Kubernetes
- Fehlerberichte und Feature Requests
- Tracing/Logging-Monitoring Checks
- Cloud-Onboarding für neue Microservices

Diese Vorlagen sind direkt mit dem [OmnixysSphere Project Board](https://github.com/orgs/YOUR-ORG/projects/1) verknüpfbar.

---

## 🔄 Automatisierung

Nutze Skripte wie `tools/create-cloud-setup-issues.sh`, um automatisch für jeden Service ein standardisiertes K8s-Issue zu erstellen.

---

## 📬 Kontakt

> Fragen oder Vorschläge? Kontaktiere das Cloud-Team unter: `cloud@omnixys.com`

---

© 2025 Omnixys – The Fabric of Modular Innovation.
