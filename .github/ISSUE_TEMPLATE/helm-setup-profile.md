---
name: 📦 Helm Chart Setup – omnixys-profile
about: Helm-Chart für den Service omnixys-profile erstellen
title: "[Cloud] Helm-Chart für omnixys-profile konfigurieren"
labels: ["type:infra", "service:profile", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-profile` unter `charts/omnixys-profile/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:

  ```bash
  helm install omnixys-profile ./charts/omnixys-profile --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter      | Wert                             |
| -------------- | -------------------------------- |
| Namespace      | `omnixys`                        |
| Image          | `ghcr.io/omnixys/profile:latest` |
| Container Port | siehe `port-konvention.md`       |
| Service Port   | siehe `port-konvention.md`       |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
