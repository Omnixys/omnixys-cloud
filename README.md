# 🛠️ Omnixys Cloud

Dieses Repository dient als zentrale Cloud- und Infrastrukturplattform für **OmnixysSphere**. Es bündelt alle Helm-Charts, CI/CD-Workflows, Observability-Konfigurationen und Setup-Vorlagen für alle Omnixys-Microservices.

---

## 📦 Inhalt

| Pfad                           | Beschreibung                                                   |
|--------------------------------|----------------------------------------------------------------|
| `.github/ISSUE_TEMPLATE/`      | Standardisierte Vorlagen für Cloud-Setup, Bugs, Features etc. |
| `.github/workflows/`           | GitHub Actions für automatisierte Deployments                 |
| `charts/<service>/`            | Helm-Charts mit Deployment-, Service- und Ingress-Templates    |
| `tools/`                       | Hilfsskripte zur Automatisierung                              |
| `namespace.yaml`               | Gemeinsamer Kubernetes-Namespace                              |
| `README.md`                    | Diese Dokumentation                                           |

---

## 🚀 Ziel

Dieses Repository dient als **Cloud-zentrales Steuerzentrum** für:

- Bereitstellung von Microservices in Kubernetes (lokal & Cloud)
- Infrastruktur als Code (IaC) mit Helm-Charts für OmnixysSphere
- GitHub Actions CI/CD Pipelines
- Monitoring, Logging und Tracing (Prometheus, Loki, Tempo)
- Service-Onboarding und Bereitstellungs-Checklisten

---

## 🧱 Verzeichnisstruktur

```bash
omnixys-cloud/
├── charts/
│   ├── person-service/
│   │   ├── Chart.yaml
│   │   ├── values.yaml
│   │   └── templates/
│   │       ├── deployment.yaml
│   │       ├── service.yaml
│   │       └── ingress.yaml
│   ├── ... (weitere Services)
│
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   └── cloud-task.md
│   ├── workflows/
│
├── tools/
│   └── create-cloud-setup-issues.sh
│
├── namespace.yaml
└── README.md
```

---

## 📋 Issue-Vorlagen & Projektstruktur

Verwende die bereitgestellte Vorlage `cloud-task.md` für jede Aufgabenbeschreibung im Cloud-Kontext. Diese Vorlage eignet sich z. B. für:

- Helm-Chart Erstellung
- Deployment-Änderungen
- Konfigurationsanpassungen
- Infrastrukturentscheidungen

**Beispielinhalt – `cloud-task.md`:**

```md
---
name: ✨ Cloud Task
about: Task zur Umsetzung eines Cloud-bezogenen Arbeitsschritts (Helm, K8s, Observability)
title: "[Cloud] <kurze Beschreibung der Aufgabe>"
labels: ["type:infra", "priority:medium"]
assignees: []
---

## ✅ Ziel

Beschreibe hier, was erreicht werden soll und warum.

## 🔢 Umsetzungsschritte

- [ ] Schritt 1
- [ ] Schritt 2
- [ ] Schritt 3 (optional)

## 📊 Relevanz

Fügt sich in folgenden Kontext ein:
- Service: `<service-name>`
- Umgebung: `dev` / `prod`
- Infrastruktur-Komponente: Helm / Ingress / Monitoring / etc.

## ✨ Erwartetes Ergebnis

Was soll am Ende überprüfbar erreicht sein?
```

Diese Vorlage ist ideal für dein GitHub Project Board und unterstützt strukturierte, nachvollziehbare Aufgabenplanung.

---

## ⟳ Automatisierung

Nutze Skripte wie `tools/create-cloud-setup-issues.sh`, um automatisch für jeden Service ein standardisiertes Helm-Setup-Issue zu erstellen.

---

## 📬 Kontakt

> Fragen oder Vorschläge? Kontaktiere das Cloud-Team unter: `cloud@omnixys.com`

---

© 2025 Omnixys – The Fabric of Modular Innovation.
