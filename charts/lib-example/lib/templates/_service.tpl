{{ define "examplelib.service" }}
apiVersion: v1
kind: Service
metadata:
  name: {{ include "examplelib.fullname" . }}
  labels:
    {{- include "examplelib.labels" . | nindent 4 }}
spec:
  type: {{ .Values.service.type }}
  ports:
    - port: {{ .Values.service.port }}
      targetPort: http
      protocol: TCP
      name: http
  selector:
    {{- include "examplelib.selectorLabels" . | nindent 4 }}
{{ end }}
