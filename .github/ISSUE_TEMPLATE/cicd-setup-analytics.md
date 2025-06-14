---
name: ⚙️ CI/CD Workflow Setup – omnixys-analytics
about: GitHub Actions Workflow für Build & Push des analytics-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-analytics einrichten"
labels: ["type:infra", "service:analytics", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-analytics`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-analytics-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/analytics-service:latest`
- [ ] Trigger: Push in `charts/omnixys-analytics/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter         | Wert                                             |
|------------------|--------------------------------------------------|
| Image Repo        | `ghcr.io/omnixys/analytics-service:latest`     |
| Registry Login    | `GITHUB_TOKEN`                                  |
| Branch            | `main`                                          |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
