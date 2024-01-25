install-argocd:
	kubectl apply -k platform/cluster-setup/argocd

provision-applications:
	kubectl apply -f product-teams/deployment/apps.yml

create-argocd-app:
	kubectl apply -k deployment/base-configs
