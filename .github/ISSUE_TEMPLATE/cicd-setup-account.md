---
name: ⚙️ CI/CD Workflow Setup – omnixys-account
about: GitHub Actions Workflow für Build & Push des account-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-account einrichten"
labels: ["type:infra", "service:account", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-account`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-account-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/account:latest`
- [ ] Trigger: Push in `charts/omnixys-account/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter         | Wert                                             |
|------------------|--------------------------------------------------|
| Image Repo        | `ghcr.io/omnixys/account:latest`     |
| Registry Login    | `GITHUB_TOKEN`                                  |
| Branch            | `main`                                          |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
