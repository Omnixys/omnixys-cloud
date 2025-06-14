---
name: 📦 Helm Chart Setup – omnixys-analytics
about: Helm-Chart für den Service omnixys-analytics erstellen
title: "[Cloud] Helm-Chart für omnixys-analytics konfigurieren"
labels:
  ["type:infra", "service:analytics", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-analytics` unter `charts/omnixys-analytics/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:

  ```bash
  helm install omnixys-analytics ./charts/omnixys-analytics --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter      | Wert                               |
| -------------- | ---------------------------------- |
| Namespace      | `omnixys`                          |
| Image          | `ghcr.io/omnixys/analytics:latest` |
| Container Port | siehe `port-konvention.md`         |
| Service Port   | siehe `port-konvention.md`         |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
