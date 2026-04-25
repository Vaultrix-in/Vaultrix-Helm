{{- define "review-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "review-service.fullname" -}}
{{- .Release.Name }}-{{ include "review-service.name" . }}
{{- end }}
