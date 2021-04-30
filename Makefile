all: generate-manifests

generate-manifests:
	helm template --output-dir . -f helm/values.yaml gopoc-app1 bitnami/nginx --version 8.8.5 --namespace gopoc-app1
	mv ./nginx/templates/*.yaml ./base
	rm -r nginx
