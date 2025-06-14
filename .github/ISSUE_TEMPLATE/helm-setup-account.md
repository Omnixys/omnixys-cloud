---
name: 📦 Helm Chart Setup – omnixys-account
about: Helm-Chart für den Service omnixys-account erstellen
title: "[Cloud] Helm-Chart für omnixys-account konfigurieren"
labels: ["type:infra", "service:account", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-account` unter `charts/omnixys-account/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:
  ```bash
  helm install omnixys-account ./charts/omnixys-account --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter       | Wert                                            |
|----------------|--------------------------------------------------|
| Namespace       | `omnixys`                                       |
| Image           | `ghcr.io/omnixys/account-service:latest`     |
| Container Port  | `8080`                                          |
| Service Port    | siehe `port-konvention.md`                      |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
