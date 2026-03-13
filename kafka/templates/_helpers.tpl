{{/*
Expand the name of the chart
*/}}
{{- define "kafka.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{/*
Create a default fully qualified name
*/}}
{{- define "kafka.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "kafka.labels" -}}
app.kubernetes.io/name: {{ include "kafka.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
