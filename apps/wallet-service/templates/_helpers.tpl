{{- define "wallet-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "wallet-service.fullname" -}}
{{- .Release.Name }}-{{ include "wallet-service.name" . }}
{{- end }}
