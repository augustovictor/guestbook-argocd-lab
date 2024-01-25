# guestbook-argocd-lab

This repo exemplifies the scenario where a central repository is responsible for defining which applications should be deployed. This is achieved by using argocd `ApplicationSet`.
Applications to be deployed should be under `product-teams/deployment` as a directory.

The definitions of the application itself can live within the application repo. It's kustomizations or helm charts


## Workflow
1. Add a new application folder to the `product-teams/deployment`. Each folder becomes an app;
1. Add The necessary overlays to deploy the application;
1. Run `make provision-applications` and watch the applications sync on argocd;

## Validated scenarios
1. Excluded folder from `product-teams/deployment` and the application got decomissioned by argocd;
1. Added a new folder and argocd provisioned the application as expected;
