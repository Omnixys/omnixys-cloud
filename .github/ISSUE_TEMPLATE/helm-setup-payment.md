---
name: 📦 Helm Chart Setup – omnixys-payment
about: Helm-Chart für den Service omnixys-payment erstellen
title: "[Cloud] Helm-Chart für omnixys-payment konfigurieren"
labels: ["type:infra", "service:payment", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-payment` unter `charts/omnixys-payment/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:

  ```bash
  helm install omnixys-payment ./charts/omnixys-payment --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter      | Wert                             |
| -------------- | -------------------------------- |
| Namespace      | `omnixys`                        |
| Image          | `ghcr.io/omnixys/payment:latest` |
| Container Port | siehe `port-konvention.md`       |
| Service Port   | siehe `port-konvention.md`       |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
