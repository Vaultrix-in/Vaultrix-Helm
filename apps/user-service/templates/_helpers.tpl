{{- define "user-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "user-service.fullname" -}}
{{- .Release.Name }}-{{ include "user-service.name" . }}
{{- end }}
