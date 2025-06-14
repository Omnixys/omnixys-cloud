---
name: ⚙️ CI/CD Workflow Setup – omnixys-gateway
about: GitHub Actions Workflow für Build & Push des gateway-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-gateway einrichten"
labels: ["type:infra", "service:gateway", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-gateway`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-gateway-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/gateway-service:latest`
- [ ] Trigger: Push in `charts/omnixys-gateway/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter         | Wert                                             |
|------------------|--------------------------------------------------|
| Image Repo        | `ghcr.io/omnixys/gateway-service:latest`     |
| Registry Login    | `GITHUB_TOKEN`                                  |
| Branch            | `main`                                          |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
