---
name: 🚀 Cloud Deployment Task – omnixys-account
about: Helm-Chart und CI/CD-Setup für den Service omnixys-account definieren
title: "[Cloud] Deployment & Helm-Chart für omnixys-account konfigurieren"
labels: ["type:infra", "service:account", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Für den Microservice `omnixys-account` soll ein produktionsnahes Cloud-Deployment aufgesetzt werden – inklusive Helm-Chart, CI/CD-Workflow und GitHub Container Registry Push.

---

## ✅ Aufgaben

- [ ] Helm-Chart unter `charts/omnixys-account/` anlegen
  - [ ] `Chart.yaml` mit Service-Metadaten
  - [ ] `values.yaml` mit Image, Ports, Ressourcen
  - [ ] `templates/` mit Deployment, Service, optional Ingress
- [ ] GitHub Actions Workflow unter `.github/workflows/deploy-account-service.yml`
  - Build bei Push in `charts/omnixys-account/**`
  - Push Image nach `ghcr.io/omnixys/account-service:latest`
- [ ] Testen mit:

  ```bash
  helm install omnixys-account ./charts/omnixys-account --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter       | Wert                                       |
|----------------|---------------------------------------------|
| Namespace       | `omnixys`                                  |
| Image           | `ghcr.io/omnixys/account-service:latest`   |
| Container Port  | `8080`                                     |
| Service Port    | `7002` (laut port-konvention.md)           |

---

## 🔍 Erfolgskriterien

- [ ] Der Service läuft stabil im Cluster
- [ ] Ist via Service erreichbar (oder Ingress)
- [ ] Image wurde via GitHub Actions gebaut und gepusht
- [ ] Helm-Deployment ist dokumentiert und reproduzierbar
