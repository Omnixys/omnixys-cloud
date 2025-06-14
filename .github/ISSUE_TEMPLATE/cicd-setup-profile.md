---
name: ⚙️ CI/CD Workflow Setup – omnixys-profile
about: GitHub Actions Workflow für Build & Push des profile-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-profile einrichten"
labels: ["type:infra", "service:profile", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-profile`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-profile-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/profile-service:latest`
- [ ] Trigger: Push in `charts/omnixys-profile/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter         | Wert                                             |
|------------------|--------------------------------------------------|
| Image Repo        | `ghcr.io/omnixys/profile-service:latest`     |
| Registry Login    | `GITHUB_TOKEN`                                  |
| Branch            | `main`                                          |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
