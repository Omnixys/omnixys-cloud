---
name: ⚙️ CI/CD Workflow Setup – omnixys-shopping-cart
about: GitHub Actions Workflow für Build & Push des shopping-cart-Service konfigurieren
title: "[CI/CD] Workflow für omnixys-shopping-cart einrichten"
labels: ["type:infra", "service:shoppingcart", "ci", "docker", "priority:high"]
assignees: []
---

## 🎯 Ziel

Einrichten eines automatisierten Build- und Push-Workflows für `omnixys-shopping-cart`, der ein Docker-Image baut und es in GHCR veröffentlicht.

---

## ✅ Aufgaben

- [ ] Workflow-Datei unter `.github/workflows/deploy-shopping-cart-service.yml` erstellen
- [ ] Schritte:
  - Checkout
  - Login zu `ghcr.io`
  - Docker Build & Tag
  - Docker Push nach `ghcr.io/omnixys/shopping-cart:latest`
- [ ] Trigger: Push in `charts/omnixys-shopping-cart/**` auf Branch `main`

---

## 🔧 Konfiguration

| Parameter      | Wert                                   |
| -------------- | -------------------------------------- |
| Image Repo     | `ghcr.io/omnixys/shopping-cart:latest` |
| Registry Login | `GITHUB_TOKEN`                         |
| Branch         | `main`                                 |

---

## 🔍 Erfolgskriterien

- [ ] Workflow wird bei Änderungen korrekt ausgelöst
- [ ] Image wird erfolgreich gebaut und in GHCR gepusht
- [ ] Keine Secrets hardcoded, CI sicher konfiguriert
