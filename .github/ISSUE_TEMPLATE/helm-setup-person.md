---
name: 📦 Helm Chart Setup – omnixys-person
about: Helm-Chart für den Service omnixys-person erstellen
title: "[Cloud] Helm-Chart für omnixys-person konfigurieren"
labels: ["type:infra", "service:person", "kubernetes", "helm", "priority:high"]
assignees: []
---

## 🎯 Ziel

Ein funktionsfähiges Helm-Chart für `omnixys-person` unter `charts/omnixys-person/` bereitstellen.

---

## ✅ Aufgaben

- [ ] `Chart.yaml` mit Service-Metadaten anlegen
- [ ] `values.yaml` mit Image, Ports, Ressourcen definieren
- [ ] `templates/` mit Deployment, Service und (optional) Ingress ausstatten
- [ ] Lokaler Test via:
  ```bash
  helm install omnixys-person ./charts/omnixys-person --namespace omnixys
  ```

---

## 🔧 Konfiguration

| Parameter       | Wert                                            |
|----------------|--------------------------------------------------|
| Namespace       | `omnixys`                                       |
| Image           | `ghcr.io/omnixys/person-service:latest`     |
| Container Port  | `8080`                                          |
| Service Port    | siehe `port-konvention.md`                      |

---

## 🔍 Erfolgskriterien

- [ ] Helm-Chart ist validiert und einsatzbereit
- [ ] Deployment funktioniert lokal im Cluster
- [ ] Dokumentation zur Nutzung liegt vor
