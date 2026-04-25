{{/*
Common labels
*/}}
{{- define "api-gateway.labels" -}}
app.kubernetes.io/name: {{ .Values.appName }}
app.kubernetes.io/component: {{ .Values.component }}
app.kubernetes.io/part-of: {{ .Values.partOf }}
app.kubernetes.io/managed-by: Helm
app.kubernetes.io/environment: {{ .Values.environment }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "api-gateway.selectorLabels" -}}
app.kubernetes.io/name: {{ .Values.appName }}
{{- end }}
