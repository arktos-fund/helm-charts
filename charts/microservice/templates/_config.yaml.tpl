{{ define "default.yaml" }}
{{- with .Values.config.logger }}
logger:
  {{- toYaml . | nindent 2 }}
{{- end }}
server:
  http:
    hostname: 0.0.0.0:8000
    timeout: {{ .Values.config.timeout }}
  grpc:
    hostname: 0.0.0.0:11000
    timeout: {{ .Values.config.timeout }}
{{- with .Values.config.data }}
data:
  {{- with .redis }}
  redis:
    {{- toYaml . | nindent 4 }}
  {{- end }}
  {{- with .postgres }}
  postgres:
    {{- toYaml . | nindent 4 }}
  {{- end }}
  {{- with .services }}
  services:
    {{- toYaml . | nindent 4 }} 
  {{- end }}
{{- end }}
{{ end }}
