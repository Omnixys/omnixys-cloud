---
name: 📦 Helm Chart Setup – omnixys-notification
about: Helm-Chart für den Service omnixys-notification erstellen
title: "[Cloud] Helm-Chart für omnixys-notification konfigurieren"
labels: ["type:infra", "service:notification", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-notification` unter `charts/omnixys-notification/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:
  ```bash
  helm install omnixys-notification ./charts/omnixys-notification --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter       | Wert                                            |
|----------------|--------------------------------------------------|
| Namespace       | `omnixys`                                       |
| Image           | `ghcr.io/omnixys/notification-service:latest`     |
| Container Port  | `8080`                                          |
| Service Port    | siehe `port-konvention.md`                      |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
