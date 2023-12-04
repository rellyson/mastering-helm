{{ define "examplelib.ingress" }}
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
    name: ingress-{{include "examplelib.fullname" .}}
    annotations: {{ .Values.ingress.annotations }}
spec:
    ingressClassName: {{ .Values.ingress.ingressClassName }}
{{end}}
