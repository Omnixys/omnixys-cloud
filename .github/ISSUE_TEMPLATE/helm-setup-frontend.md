---
name: 📦 Helm Chart Setup – omnixys-frontend
about: Helm-Chart für den Service omnixys-frontend erstellen
title: "[Cloud] Helm-Chart für omnixys-frontend konfigurieren"
labels:
  ["type:infra", "service:frontend", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-frontend` unter `charts/omnixys-frontend/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:

  ```bash
  helm install omnixys-frontend ./charts/omnixys-frontend --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter      | Wert                              |
| -------------- | --------------------------------- |
| Namespace      | `omnixys`                         |
| Image          | `ghcr.io/omnixys/frontend:latest` |
| Container Port | siehe `port-konvention.md`        |
| Service Port   | siehe `port-konvention.md`        |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
