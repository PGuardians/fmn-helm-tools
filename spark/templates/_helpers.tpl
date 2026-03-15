{{- define "spark-cluster.name" -}}
spark-cluster
{{- end }}

{{- define "spark-cluster.fullname" -}}
{{ .Release.Name }}-spark
{{- end }}
