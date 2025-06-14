---
name: 📦 Helm Chart Setup – omnixys-product
about: Helm-Chart für den Service omnixys-product erstellen
title: "[Cloud] Helm-Chart für omnixys-product konfigurieren"
labels: ["type:infra", "service:product", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-product` unter `charts/omnixys-product/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:
  ```bash
  helm install omnixys-product ./charts/omnixys-product --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter       | Wert                                            |
|----------------|--------------------------------------------------|
| Namespace       | `omnixys`                                       |
| Image           | `ghcr.io/omnixys/product-service:latest`     |
| Container Port  | `8080`                                          |
| Service Port    | siehe `port-konvention.md`                      |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
