---
name: ⚙️ CI/CD Workflow Setup – omnixys-frontend
about: GitHub Actions Workflow für Build & Push des frontend-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-frontend einrichten"
labels: ["type:infra", "service:frontend", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-frontend`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-frontend-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/frontend:latest`
- [ ] Trigger: Push in `charts/omnixys-frontend/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter      | Wert                              |
| -------------- | --------------------------------- |
| Image Repo     | `ghcr.io/omnixys/frontend:latest` |
| Registry Login | `GITHUB_TOKEN`                    |
| Branch         | `main`                            |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
