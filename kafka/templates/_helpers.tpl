{{/*
Return the full name of the release + chart
*/}}
{{- define "kafka.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels for all Kafka objects
*/}}
{{- define "kafka.labels" -}}
app.kubernetes.io/name: {{ include "kafka.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end -}}

{{/*
Selector labels used for Services/Deployments
*/}}
{{- define "kafka.selectorLabels" -}}
app.kubernetes.io/name: {{ include "kafka.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
