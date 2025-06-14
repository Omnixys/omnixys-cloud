---
name: 📦 Helm Chart Setup – omnixys-shopping-cart
about: Helm-Chart für den Service omnixys-shopping-cart erstellen
title: "[Cloud] Helm-Chart für omnixys-shopping-cart konfigurieren"
labels: ["type:infra", "service:shoppingcart", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-shopping-cart` unter `charts/omnixys-shopping-cart/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:
  ```bash
  helm install omnixys-shopping-cart ./charts/omnixys-shopping-cart --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter       | Wert                                            |
|----------------|--------------------------------------------------|
| Namespace       | `omnixys`                                       |
| Image           | `ghcr.io/omnixys/shopping-cart-service:latest`     |
| Container Port  | `8080`                                          |
| Service Port    | siehe `port-konvention.md`                      |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
