{{- define "api-gateway.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "api-gateway.fullname" -}}
{{- .Release.Name }}-{{ include "api-gateway.name" . }}
{{- end }}
