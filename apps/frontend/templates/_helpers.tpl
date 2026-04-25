{{- define "frontend.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "frontend.fullname" -}}
{{- .Release.Name }}-{{ include "frontend.name" . }}
{{- end }}
