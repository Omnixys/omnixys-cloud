---
name: 📦 Helm Chart Setup – omnixys-invoice
about: Helm-Chart für den Service omnixys-invoice erstellen
title: "[Cloud] Helm-Chart für omnixys-invoice konfigurieren"
labels: ["type:infra", "service:invoice", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-invoice` unter `charts/omnixys-invoice/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:

  ```bash
  helm install omnixys-invoice ./charts/omnixys-invoice --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter      | Wert                             |
| -------------- | -------------------------------- |
| Namespace      | `omnixys`                        |
| Image          | `ghcr.io/omnixys/invoice:latest` |
| Container Port | siehe `port-konvention.md`       |
| Service Port   | siehe `port-konvention.md`       |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
