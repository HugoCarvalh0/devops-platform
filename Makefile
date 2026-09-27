.PHONY: help cluster-up cluster-down cluster-status

help:
	@echo "Available commands:"
	@echo "  make cluster-up      Create the local Kubernetes cluster"
	@echo "  make cluster-down    Delete the local Kubernetes cluster"
	@echo "  make cluster-status  Show cluster status"

cluster-up:
	kind create cluster --name devops-lab

cluster-down:
	kind delete cluster --name devops-lab

cluster-status:
	kubectl get nodes
