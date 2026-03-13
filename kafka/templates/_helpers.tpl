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
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride }}
{{- else }}
{{- printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}
{{- end }}
