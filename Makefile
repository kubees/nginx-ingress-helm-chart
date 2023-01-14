install:
	helm dependency update ./nginx-ingress-helm-chart
	helm install nginx-ingress ./nginx-ingress-helm-chart -f nginx-ingress-helm-chart/values.yaml -n nginx-ingress --create-namespace
uninstall:
	helm uninstall nginx-ingress -n nginx-ingress
template:
	helm template nginx-ingress ./nginx-ingress-helm-chart
dependencies:
	helm dependency update ./nginx-ingress-helm-chart
