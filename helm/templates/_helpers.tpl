{{- define "whisper-oseai.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "whisper-oseai.fullname" -}}
{{- printf "%s-%s" (include "whisper-oseai.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "whisper-oseai.labels" -}}
app.kubernetes.io/name: {{ include "whisper-oseai.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
