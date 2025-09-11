{{- define "whisper-helm.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "whisper-helm.fullname" -}}
{{- printf "%s-%s" (include "whisper-helm.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "whisper-helm.labels" -}}
app.kubernetes.io/name: {{ include "whisper-helm.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
