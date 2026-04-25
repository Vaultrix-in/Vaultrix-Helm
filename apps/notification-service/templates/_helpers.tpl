{{- define "notification-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "notification-service.fullname" -}}
{{- .Release.Name }}-{{ include "notification-service.name" . }}
{{- end }}
