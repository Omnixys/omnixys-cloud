---
name: ⚙️ CI/CD Workflow Setup – omnixys-inventory
about: GitHub Actions Workflow für Build & Push des inventory-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-inventory einrichten"
labels: ["type:infra", "service:inventory", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-inventory`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-inventory-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/inventory:latest`
- [ ] Trigger: Push in `charts/omnixys-inventory/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter      | Wert                               |
| -------------- | ---------------------------------- |
| Image Repo     | `ghcr.io/omnixys/inventory:latest` |
| Registry Login | `GITHUB_TOKEN`                     |
| Branch         | `main`                             |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
