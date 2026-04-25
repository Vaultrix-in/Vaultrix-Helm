{{- define "invoice-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "invoice-service.fullname" -}}
{{- .Release.Name }}-{{ include "invoice-service.name" . }}
{{- end }}
