{{- define "omnixys-person.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "omnixys-person.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- include "omnixys-person.name" . }}-{{ .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{- define "omnixys-person.namespace" -}}
{{- default .Release.Namespace .Values.namespaceOverride }}
{{- end }}
