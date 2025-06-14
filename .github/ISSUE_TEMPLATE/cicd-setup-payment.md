---
name: ⚙️ CI/CD Workflow Setup – omnixys-payment
about: GitHub Actions Workflow für Build & Push des payment-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-payment einrichten"
labels: ["type:infra", "service:payment", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-payment`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-payment-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/payment-service:latest`
- [ ] Trigger: Push in `charts/omnixys-payment/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter         | Wert                                             |
|------------------|--------------------------------------------------|
| Image Repo        | `ghcr.io/omnixys/payment-service:latest`     |
| Registry Login    | `GITHUB_TOKEN`                                  |
| Branch            | `main`                                          |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
