---
name: ⚙️ CI/CD Workflow Setup – omnixys-order
about: GitHub Actions Workflow für Build & Push des order-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-order einrichten"
labels: ["type:infra", "service:order", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-order`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-order-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/order:latest`
- [ ] Trigger: Push in `charts/omnixys-order/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter      | Wert                           |
| -------------- | ------------------------------ |
| Image Repo     | `ghcr.io/omnixys/order:latest` |
| Registry Login | `GITHUB_TOKEN`                 |
| Branch         | `main`                         |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
