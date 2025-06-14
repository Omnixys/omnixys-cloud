---
name: ⚙️ CI/CD Workflow Setup – omnixys-notification
about: GitHub Actions Workflow für Build & Push des notification-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-notification einrichten"
labels: ["type:infra", "service:notification", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-notification`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-notification-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/notification:latest`
- [ ] Trigger: Push in `charts/omnixys-notification/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter      | Wert                                  |
| -------------- | ------------------------------------- |
| Image Repo     | `ghcr.io/omnixys/notification:latest` |
| Registry Login | `GITHUB_TOKEN`                        |
| Branch         | `main`                                |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
