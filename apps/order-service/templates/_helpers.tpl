{{- define "order-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "order-service.fullname" -}}
{{- .Release.Name }}-{{ include "order-service.name" . }}
{{- end }}
