---
name: ⚙️ CI/CD Workflow Setup – omnixys-logstream
about: GitHub Actions Workflow für Build & Push des logstream-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-logstream einrichten"
labels: ["type:infra", "service:logstream", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-logstream`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-logstream-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/logstream:latest`
- [ ] Trigger: Push in `charts/omnixys-logstream/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter      | Wert                               |
| -------------- | ---------------------------------- |
| Image Repo     | `ghcr.io/omnixys/logstream:latest` |
| Registry Login | `GITHUB_TOKEN`                     |
| Branch         | `main`                             |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
