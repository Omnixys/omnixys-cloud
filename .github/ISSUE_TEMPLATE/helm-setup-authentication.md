---
name: 📦 Helm Chart Setup – omnixys-authentication
about: Helm-Chart für den Service omnixys-authentication erstellen
title: "[Cloud] Helm-Chart für omnixys-authentication konfigurieren"
labels:
  [
    "type:infra",
    "service:authentication",
    "kubernetes",
    "helm",
    "priority:high",
  ]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-authentication` unter `charts/omnixys-authentication/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:

  ```bash
  helm install omnixys-authentication ./charts/omnixys-authentication --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter      | Wert                                    |
| -------------- | --------------------------------------- |
| Namespace      | `omnixys`                               |
| Image          | `ghcr.io/omnixys/authentication:latest` |
| Container Port | siehe `port-konvention.md`              |
| Service Port   | siehe `port-konvention.md`              |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
