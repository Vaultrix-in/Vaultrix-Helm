{{/*
Common labels
*/}}
{{- define "user-service.labels" -}}
app.kubernetes.io/name: {{ .Values.appName }}
app.kubernetes.io/component: {{ .Values.component }}
app.kubernetes.io/part-of: {{ .Values.partOf }}
app.kubernetes.io/managed-by: Helm
app.kubernetes.io/environment: {{ .Values.environment }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "user-service.selectorLabels" -}}
app.kubernetes.io/name: {{ .Values.appName }}
{{- end }}
