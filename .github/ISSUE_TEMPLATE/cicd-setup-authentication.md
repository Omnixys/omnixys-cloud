---
name: ⚙️ CI/CD Workflow Setup – omnixys-authentication
about: GitHub Actions Workflow für Build & Push des authentication-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-authentication einrichten"
labels:
  ["type:infra", "service:authentication", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-authentication`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-authentication-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/authentication:latest`
- [ ] Trigger: Push in `charts/omnixys-authentication/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter      | Wert                                    |
| -------------- | --------------------------------------- |
| Image Repo     | `ghcr.io/omnixys/authentication:latest` |
| Registry Login | `GITHUB_TOKEN`                          |
| Branch         | `main`                                  |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
