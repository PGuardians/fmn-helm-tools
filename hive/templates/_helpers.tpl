{{/*
Expand the name of the chart
*/}}
{{- define "hive.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{/*
Create a default fully qualified app name
*/}}
{{- define "hive.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride }}
{{- else }}
{{- printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}
{{- end }}
