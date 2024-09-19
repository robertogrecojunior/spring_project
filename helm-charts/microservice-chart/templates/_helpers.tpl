{{- define "microservice.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "microservice.fullname" -}}
{{- .Release.Name | printf "%s-%s" .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}



