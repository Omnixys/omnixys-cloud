# Omnixys Person Service – Helm Chart

Dieses Helm-Chart installiert den omnixys-person-service – einen Java/Spring-basierten Microservice mit Unterstützung für Keycloak, Kafka, MongoDB, TLS und Prometheus-Monitoring.

---

## 📦 Features

* Unterstützung für dev und prod Umgebungen via values.{env}.yaml
* TLS, Secrets, ConfigMap und VolumeMounts vorkonfiguriert
* Liveness/Readiness Probes
* Ingress mit TLS
* Ressourcenbegrenzung (CPU/Memory)
* Helm-Template-Konventionen & override-fähige fullname

---

## 📁 Struktur

```text
charts/person/
├── Chart.yaml
├── values.yaml                  # Basiswerte
├── values.dev.yaml              # Entwicklung (lokal)
├── values.prod.yaml             # Produktion (Cluster)
├── templates/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml
│   ├── configmap.yaml
│   ├── secret.yaml
│   ├── tls-secret.yaml
│   └── _helpers.tpl
└── README.md
```

---

## 🚀 Deployment

### Dev

```bash
helm upgrade --install person ./charts/person \
  --namespace omnixys-dev \
  -f values.yaml \
  -f values.dev.yaml
```

### Prod

```bash
helm upgrade --install person ./charts/person \
  --namespace omnixys \
  -f values.yaml \
  -f values.prod.yaml
```

---

## 🔐 Secrets

Das Chart erstellt automatisch zwei Kubernetes-Secrets:

1. `{{ .Release.Name }}-secret` → enthält Base64-kodierte App-Secrets
2. `{{ .Release.Name }}-tls` → enthält TLS-Zertifikat + Key

### 🔧 TLS Secret erstellen (Beispiel)

```bash
kubectl create secret tls person-tls-secret \
  --cert=./tls/tls.crt \
  --key=./tls/tls.key \
  --namespace omnixys
```

### 🔧 Beispiel (lokal generieren)

```bash
echo -n "myvalue" | base64
echo "bXl2YWx1ZQ==" | base64 -d
```

---

## 🫀 Health Probes

Konfigurierbar in `values.yaml`:

```yaml
livenessProbe:
  path: /actuator/health/liveness
  port: 7001

readinessProbe:
  path: /actuator/health/readiness
  port: 7001
```

---

## 📊 Monitoring

Enthält Prometheus Annotationen im `service.yaml`:

```yaml
annotations:
  prometheus.io/scrape: "true"
  prometheus.io/port: "7001"
```

---

## 🌍 Zugriff auf den Service

Nach erfolgreichem Deployment erreichst du den Service unter:

* **Dev:** [http://person.omnixys.local](http://person.omnixys.local) (ohne TLS)
* **Prod:** [https://person.omnixys.local](https://person.omnixys.local) (mit TLS)

---

## 🧪 Helm-Tests

### Helm Lint

```bash
helm lint ./charts/person
```

### Helm Rendering testen (lokal)

```bash
helm template person ./charts/person \
  --namespace omnixys-dev \
  -f values.yaml -f values.dev.yaml
```

---

## ✅ Chart Checkliste

* [x] Helm Lint erfolgreich
* [x] Template Rendering getestet
* [x] TLS aktiv
* [x] Secrets eingebunden
* [x] Liveness/Readiness-Probes konfiguriert
* [x] Monitoring mit Prometheus vorbereitet

---

## ✨ Weitere Hinweise

* Vermeide `hostPath` in Produktion – verwende `emptyDir` oder PVC
* Namespace wird über `_helpers.tpl` korrekt gesetzt
* Helm `fullnameOverride`/`nameOverride` werden unterstützt
* HorizontalPodAutoscaler & PodMonitor können optional ergänzt werden
