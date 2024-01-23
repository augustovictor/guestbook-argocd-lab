install-argocd:
	kubectl apply -k platform/cluster-setup/argocd

create-argocd-app:
	kubectl apply -k deployment/base-configs
